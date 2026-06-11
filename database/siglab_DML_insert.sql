/* =====================================================
   EMPRESA
===================================================== */

INSERT INTO empresa (
    nome_fantasia,
    razao_social,
    cnpj,
    resumo,
    descricao
) VALUES (
    'SENAI CIMATEC',
    'Serviço Nacional de Aprendizagem Industrial',
    '03.795.071/0001-16',
    'Centro universitário e tecnológico do SENAI.',
    'Instituição voltada para educação profissional, pesquisa e inovação tecnológica.'
);


/* =====================================================
   PESSOAS
===================================================== */

INSERT INTO pessoa (
    nome,
    email,
    cpf
) VALUES
(
    'Carlos Eduardo Santos',
    'carlos.santos@senai.edu.br',
    '123.456.789-01'
),
(
    'Mariana Oliveira Lima',
    'mariana.lima@senai.edu.br',
    '123.456.789-02'
),
(
    'Ricardo Almeida Souza',
    'ricardo.souza@senai.edu.br',
    '123.456.789-03'
),
(
    'Fernanda Costa Ribeiro',
    'fernanda.ribeiro@senai.edu.br',
    '123.456.789-04'
);


/* =====================================================
   COORDENADORES
===================================================== */

INSERT INTO coordenador (
    id_pessoa
) VALUES
(1),
(2),
(3),
(4);


/* =====================================================
   TIPOS DE LABORATÓRIO
===================================================== */

INSERT INTO laboratorio_tipo (
    nome
) VALUES
('Ensino'),
('Pesquisa'),
('Prática'),
('Multiuso');


/* =====================================================
   ÁREAS
===================================================== */

INSERT INTO laboratorio_area (
    nome
) VALUES
('Informática'),
('Eletrônica'),
('Química'),
('Eletrotécnica'),
('Mecânica'),
('Automação Industrial');


/* =====================================================
   STATUS
===================================================== */

INSERT INTO laboratorio_status (
    nome
) VALUES
('Ativo'),
('Inativo'),
('Em manutenção');


/* =====================================================
   BLOCOS
===================================================== */

INSERT INTO laboratorio_bloco (
    nome
) VALUES
('Bloco A'),
('Bloco B'),
('Bloco C'),
('Bloco D');


/* =====================================================
   ANDARES
===================================================== */

INSERT INTO laboratorio_andar (
    nome
) VALUES
('Térreo'),
('1º Andar'),
('2º Andar'),
('3º Andar');


/* =====================================================
   LABORATÓRIOS
===================================================== */

INSERT INTO laboratorio (
    id_empresa,
    id_coordenador,
    id_tipo,
    id_status,
    id_area,
    id_bloco,
    id_andar,
    codigo,
    nome,
    sala,
    ramal,
    capacidade,
    resumo,
    descricao,
    observacao,
    imagem_capa,
    imagem_interna
) VALUES

(
    1,
    1,
    1,
    1,
    1,
    1,
    2,
    'LAB-INF-001',
    'Laboratório de Informática',
    '101',
    '2101',
    30,
    'Laboratório destinado às aulas de informática.',
    'Possui computadores para desenvolvimento de software, redes e banco de dados.',
    'Equipamentos renovados em 2025.',
    'lab_informatica_capa.jpg',
    'lab_informatica.jpg'
),

(
    1,
    2,
    3,
    1,
    2,
    1,
    1,
    'LAB-ELN-002',
    'Laboratório de Eletrônica',
    '102',
    '2102',
    25,
    'Espaço para montagem e análise de circuitos.',
    'Conta com osciloscópios, fontes de alimentação e kits de eletrônica.',
    'Necessário uso de EPI durante atividades práticas.',
    'lab_eletronica_capa.jpg',
    'lab_eletronica.jpg'
),

(
    1,
    3,
    2,
    1,
    3,
    2,
    1,
    'LAB-QUI-003',
    'Laboratório de Química',
    '201',
    '2201',
    20,
    'Laboratório para experimentos químicos.',
    'Equipado com capelas, vidrarias e instrumentos de análise química.',
    'Uso obrigatório de jaleco.',
    'lab_quimica_capa.jpg',
    'lab_quimica.jpg'
),

(
    1,
    4,
    3,
    1,
    4,
    3,
    2,
    'LAB-ELT-004',
    'Laboratório de Eletrotécnica',
    '301',
    '2301',
    24,
    'Espaço para práticas de instalações elétricas.',
    'Conta com painéis elétricos, motores e instrumentos de medição.',
    'Acesso restrito durante atividades energizadas.',
    'lab_eletrotecnica_capa.jpg',
    'lab_eletrotecnica.jpg'
),

(
    1,
    1,
    4,
    3,
    6,
    4,
    3,
    'LAB-AUT-005',
    'Laboratório de Automação Industrial',
    '401',
    '2401',
    18,
    'Laboratório para CLP e sistemas automatizados.',
    'Equipado com esteiras didáticas, CLPs Siemens e sensores industriais.',
    'Em manutenção preventiva.',
    'lab_automacao_capa.jpg',
    'lab_automacao.jpg'
);