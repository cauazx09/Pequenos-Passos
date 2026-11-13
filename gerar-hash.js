
import bcrypt from 'bcrypt';

const senhaPlana = '123456';
const saltRounds = 10; 

async function gerarHashSenha() {
    try {

        const hash = await bcrypt.hash(senhaPlana, saltRounds);
        console.log('====================================================');
        console.log(`Senha Original em Texto Puro: ${senhaPlana}`);
        console.log(`Hash Seguro Gerado para o Banco: ${hash}`);
        console.log('====================================================');
    } catch (erro) {
        console.error('Erro ao gerar hash:', erro);
    }
}


gerarHashSenha();
