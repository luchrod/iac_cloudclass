MBA Engenharia de Dados
Turma D - 2025
Disciplina: Cloud Computing e SRE
Professor: Yuri Menezes


Alunos:
Rodrigo Luchini Ferreira: 10121256
Mayra Lopes Moreira: 10161587
Talohama Dayane Ferreira Marques: 1073022-6



Criar um código de ifraestrutura as a code, codando em Terraform que atenda os requistos abaixo:

Esta arquitetura representa uma infraestrutura altamente disponível e escalável na AWS para uma aplicação web, distribuída entre duas zonas de disponibilidade. Vamos analisar cada componente:

1. Usuários e Amazon Route 53
Usuários: São os clientes finais acessando a aplicação via internet. Amazon Route 53: Serviço de DNS da AWS. Ele resolve o nome do domínio (ex: www.exemplo.com) e direciona as requisições para o Elastic Load Balancer (ELB).

2. Elastic Load Balancing (ELB)
O ELB distribui automaticamente o tráfego de entrada entre múltiplas instâncias EC2.

3. Zonas de Disponibilidade (AZs)
Zone A e Zone B são zonas de disponibilidade dentro de uma mesma região da AWS.

Cada zona possui:

Sub-rede pública (Public Subnet): onde as instâncias EC2 podem acessar a internet.

Instâncias EC2: servidores virtuais que executam sua aplicação.

4. Auto Scaling
O componente de Auto Scaling monitora a carga nas instâncias EC2.

Ele adiciona ou remove instâncias EC2 automaticamente com base em políticas definidas (por exemplo: CPU > 80% por 5 minutos).

Isso garante elasticidade e eficiência de custo.

Resumo do Fluxo
Usuários fazem requisições para a aplicação.

O Route 53 resolve o nome do domínio para o ELB.

O ELB distribui as requisições entre as instâncias EC2 em Zone A e Zone B.

O Auto Scaling garante que o número de instâncias esteja adequado à demanda.
