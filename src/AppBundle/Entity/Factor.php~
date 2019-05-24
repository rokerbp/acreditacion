<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Factor
 *
 * @ORM\Table(name="factor")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\FactorRepository")
 */
class Factor
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="string", length=255)
     */
    private $nombre;

    /**
     * @var int
     *
     * @ORM\Column(name="ponderacion", type="integer")
     */
    private $ponderacion;

    /**
     * @var string
     *
     * @ORM\Column(name="justificacion", type="text")
     */
    private $justificacion;

    /**
     * @var float
     *
     * @ORM\Column(name="valor", type="float", nullable=true)
     */
    private $valor;

    /**
     * @var float
     *
     * @ORM\Column(name="porcentaje", type="float", nullable=true)
     */
    private $porcentaje;

    /**
     * Many Features have One Product.
     * @ORM\ManyToOne(targetEntity="Modelo", inversedBy="facts")
     * @ORM\JoinColumn(name="modelo", referencedColumnName="id")
     */
    private $modelo;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     *
     * @return Factor
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

    /**
     * Set ponderacion
     *
     * @param integer $ponderacion
     *
     * @return Factor
     */
    public function setPonderacion($ponderacion)
    {
        $this->ponderacion = $ponderacion;

        return $this;
    }

    /**
     * Get ponderacion
     *
     * @return int
     */
    public function getPonderacion()
    {
        return $this->ponderacion;
    }

    /**
     * Set justificacion
     *
     * @param string $justificacion
     *
     * @return Factor
     */
    public function setJustificacion($justificacion)
    {
        $this->justificacion = $justificacion;

        return $this;
    }

    /**
     * Get justificacion
     *
     * @return string
     */
    public function getJustificacion()
    {
        return $this->justificacion;
    }

    /**
     * Set valor
     *
     * @param float $valor
     *
     * @return Factor
     */
    public function setValor($valor)
    {
        $this->valor = $valor;

        return $this;
    }

    /**
     * Get valor
     *
     * @return float
     */
    public function getValor()
    {
        return $this->valor;
    }

    /**
     * Set porcentaje
     *
     * @param float $porcentaje
     *
     * @return Factor
     */
    public function setPorcentaje($porcentaje)
    {
        $this->porcentaje = $porcentaje;

        return $this;
    }

    /**
     * Get porcentaje
     *
     * @return float
     */
    public function getPorcentaje()
    {
        return $this->porcentaje;
    }

    /**
     * Set modelo
     *
     * @param \AppBundle\Entity\Modelo $modelo
     *
     * @return Factor
     */
    public function setModelo(\AppBundle\Entity\Modelo $modelo = null)
    {
        $this->modelo = $modelo;

        return $this;
    }

    /**
     * Get modelo
     *
     * @return \AppBundle\Entity\Modelo
     */
    public function getModelo()
    {
        return $this->modelo;
    }
    
    public function whereis(){
        $hasModelo = ( empty($this->getNombre()) ) ? '' : $this->getNombre();
        return $hasModelo;
    }
}
