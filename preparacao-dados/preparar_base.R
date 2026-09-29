# =============================================================================
# Preparação da base do minicurso
# PNAD Contínua, arquivo anual da 5ª visita
#
# Saídas (na pasta dados/, ignorada pelo Git):
#   - pnadc_<ano>_visita5.csv.gz           variáveis do curso, em códigos
#   - pnadc_<ano>_visita5_replicas.csv.gz  chaves da pessoa + 200 pesos replicados
# =============================================================================


# 1. Parâmetros ----------------------------------------------------------------

ano    <- 2022
visita <- 5

pasta_dados <- here::here("dados")

arquivo_base     <- file.path(pasta_dados, sprintf("pnadc_%d_visita%d.csv.gz", ano, visita))
arquivo_replicas <- file.path(pasta_dados, sprintf("pnadc_%d_visita%d_replicas.csv.gz", ano, visita))


# 2. Pacotes -------------------------------------------------------------------

# TODO: carregar os pacotes usados no script


# 3. Seleção de variáveis ------------------------------------------------------

# Identificação da pessoa: chave para juntar a base principal e as réplicas
vars_chave <- c("Ano", "Trimestre", "UPA", "V1008", "V1014", "V2003")

# Localização
vars_local <- c("UF", "Capital", "RM_RIDE", "V1022", "V1023")

# Desenho amostral (linearização com pós-estratificação)
vars_desenho <- c("Estrato", "V1030", "V1031", "V1032", "posest")

# Características da pessoa
vars_pessoa <- c("V2005", "V2007", "V2009", "V2010")

# Educação
vars_educacao <- c("V3002", "VD3004", "VD3005")

# Trabalho e rendimento
vars_trabalho <- c("VD4001", "VD4002", "VD4009", "V4019", "VD4012",
                   "VD4010", "VD4011", "VD4019", "VD4031")

# Outras formas de trabalho (módulo da 5ª visita)
vars_afazeres <- c("V4119", "V4120", "V4121B")

# Pesos replicados (bootstrap)
vars_replicas <- sprintf("V1032%03d", 1:200)

vars_curso <- c(vars_chave, vars_local, vars_desenho, vars_pessoa,
                vars_educacao, vars_trabalho, vars_afazeres)


# 4. Download e leitura --------------------------------------------------------

# TODO: baixar e ler a 5ª visita do ano escolhido, em códigos (sem rótulos)
#       e sem criar o objeto de desenho. Trazer vars_curso e vars_replicas.


# 5. Checagens -----------------------------------------------------------------

# TODO: parar com mensagem clara se alguma variável de vars_curso ou
#       vars_replicas não existir no arquivo lido

# TODO: conferir que a chave da pessoa (vars_chave) identifica cada linha
#       de forma única

# TODO: conferir que a soma de V1032 bate com a população total esperada


# 6. Gravação ------------------------------------------------------------------

# TODO: criar a pasta de dados, se não existir

# TODO: gravar a base principal (vars_curso) em arquivo_base

# TODO: gravar a base de réplicas (vars_chave + vars_replicas) em arquivo_replicas


# 7. Resumo --------------------------------------------------------------------

# TODO: mostrar número de linhas e colunas e tamanho em MB de cada arquivo
