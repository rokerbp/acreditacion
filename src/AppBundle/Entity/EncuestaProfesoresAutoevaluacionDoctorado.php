<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * EncuestaProfesoresAutoevaluacionDoctorado
 *
 * @ORM\Table(name="Encuesta_Profesores_autoevaluacion_Doctorado")
 * @ORM\Entity
 */
class EncuestaProfesoresAutoevaluacionDoctorado
{
    /**
     * @var integer
     *
     * @ORM\Column(name="Score", type="integer", nullable=true)
     */
    private $score = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Nombre", type="string", length=128, nullable=true)
     */
    private $nombre = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Planestudios", type="string", length=32, nullable=true)
     */
    private $planestudios = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Email", type="string", length=128, nullable=true)
     */
    private $email = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Actproductiva", type="string", length=256, nullable=true)
     */
    private $actproductiva = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Relprograma", type="string", length=256, nullable=true)
     */
    private $relprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Objprograma", type="string", length=32, nullable=true)
     */
    private $objprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Perfadmitidos", type="string", length=32, nullable=true)
     */
    private $perfadmitidos = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Desempeno", type="string", length=32, nullable=true)
     */
    private $desempeno = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Perfegresado", type="string", length=32, nullable=true)
     */
    private $perfegresado = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Perfprofesores", type="string", length=32, nullable=true)
     */
    private $perfprofesores = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Numprofesores", type="string", length=32, nullable=true)
     */
    private $numprofesores = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Proacompanamiento", type="string", length=32, nullable=true)
     */
    private $proacompanamiento = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Proprofesores", type="string", length=32, nullable=true)
     */
    private $proprofesores = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Propedagogicos", type="string", length=32, nullable=true)
     */
    private $propedagogicos = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Procevaluacion", type="string", length=32, nullable=true)
     */
    private $procevaluacion = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Aplconocimiento", type="string", length=32, nullable=true)
     */
    private $aplconocimiento = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Mecinvestigacion", type="string", length=32, nullable=true)
     */
    private $mecinvestigacion = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Prodinvestigativa", type="string", length=32, nullable=true)
     */
    private $prodinvestigativa = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Interprograma", type="string", length=32, nullable=true)
     */
    private $interprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Impacinvestigacion", type="string", length=32, nullable=true)
     */
    private $impacinvestigacion = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Articprograma", type="string", length=32, nullable=true)
     */
    private $articprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Internalprograma", type="string", length=32, nullable=true)
     */
    private $internalprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Mecanlengua", type="string", length=32, nullable=true)
     */
    private $mecanlengua = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Bienestudiantil", type="string", length=32, nullable=true)
     */
    private $bienestudiantil = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Ambienteinsti", type="string", length=32, nullable=true)
     */
    private $ambienteinsti = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Ambienteconsidera", type="string", length=32, nullable=true)
     */
    private $ambienteconsidera = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Impactoocupacional", type="string", length=32, nullable=true)
     */
    private $impactoocupacional = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Impactocientifica", type="string", length=32, nullable=true)
     */
    private $impactocientifica = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Segvincegresados", type="string", length=32, nullable=true)
     */
    private $segvincegresados = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Consecrecursos", type="string", length=32, nullable=true)
     */
    private $consecrecursos = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Apoyoadministrativo", type="string", length=32, nullable=true)
     */
    private $apoyoadministrativo = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Dedicacionprograma", type="string", length=64, nullable=true)
     */
    private $dedicacionprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Redescientificas", type="text", length=65535, nullable=true)
     */
    private $redescientificas = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Premiosrecibidos", type="text", length=65535, nullable=true)
     */
    private $premiosrecibidos = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Comiteeditorial", type="text", length=65535, nullable=true)
     */
    private $comiteeditorial = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Freccvlac", type="string", length=64, nullable=true)
     */
    private $freccvlac = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Timest", type="string", length=64)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $timest;

    /**
     * Set nombre
     *
     * @param string $nombre
     *
     * @return EncuestaProfesoresAutoevaluacionDoctorado
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string
     */
    public function getNombre()
    {
        return $this->nombre;
    }


}

