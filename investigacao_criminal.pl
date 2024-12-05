% investigacao_criminal.pl
% Sistema Especialista para Análise de Casos Criminais
% Desenvolvido por: [Seu Nome Aqui]

% Base de Conhecimento
evidencia(impressao_digital).
evidencia(testemunha_ocular).
evidencia(motivo_financeiro).
evidencia(arma_do_crime).

% Regras para suspeitos e teorias
suspeito(jose) :-
    evidencia(impressao_digital), evidencia(motivo_financeiro).

suspeito(maria) :-
    evidencia(testemunha_ocular), evidencia(arma_do_crime).

teoria(crime_passional) :-
    evidencia(testemunha_ocular), relacao(vitima, suspeito).

% Função principal para análise
analisar :-
    write('Bem-vindo ao Sistema de Investigação Criminal!'), nl,
    perguntar(impressao_digital),
    perguntar(testemunha_ocular),
    perguntar(motivo_financeiro),
    (
        suspeito(Suspeito), !,
        format('Suspeito identificado: ~w~n', [Suspeito])
    ;
        write('Não foi possível identificar um suspeito com as evidências fornecidas.'), nl
    ),
    write('Desenvolvido por: [Seu Nome Aqui]').

% Pergunta sobre evidências
perguntar(Evidencia) :-
    format('Há evidência de ~w? (sim/nao): ', [Evidencia]),
    read(Resposta),
    (Resposta == sim -> assertz(evidencia(Evidencia)) ; true).
