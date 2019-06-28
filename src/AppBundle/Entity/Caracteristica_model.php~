<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Caracteristica_model
 *
 * @ORM\Table(name="caracteristica_model")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\Caracteristica_modelRepository")
 */
class Caracteristica_model
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
     * @var string
     *
     * @ORM\Column(name="descripcion", type="text", nullable=true)
     */
    private $descripcion;

    /**
     * @var float
     *
     * @ORM\Column(name="ponderacion", type="float", nullable=true)
     */
    private $ponderacion;

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
     * One Caracteristica has Many Indicadores.
     * @ORM\OneToMany(targetEntity="Indicador_model", mappedBy="caracteristica_model")
     */
    private $indicadores_model;

    /**
     * Many Caracteristicas have One Factor.
     * @ORM\ManyToOne(targetEntity="Factor_model", inversedBy="caracteristicas_model", cascade={"persist"})
     * @ORM\JoinColumn(name="factor_model", referencedColumnName="id")
     */
    private $factor_model;


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
     * @return Caracteristica_model
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
     * Set descripcion
     *
     * @param string $descripcion
     *
     * @return Caracteristica_model
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Set ponderacion
     *
     * @param float $ponderacion
     *
     * @return Caracteristica_model
     */
    public function setPonderacion($ponderacion)
    {
        $this->ponderacion = $ponderacion;

        return $this;
    }

    /**
     * Get ponderacion
     *
     * @return float
     */
    public function getPonderacion()
    {
        return $this->ponderacion;
    }

    /**
     * Set valor
     *
     * @param float $valor
     *
     * @return Caracteristica_model
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
     * @return Caracteristica_model
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
     * Set factorModel
     *
     * @param \AppBundle\Entity\Factor_model $factorModel
     *
     * @return Caracteristica_model
     */
    public function setFactorModel(\AppBundle\Entity\Factor_model $factorModel = null)
    {
        $this->factor_model = $factorModel;

        return $this;
    }

    /**
     * Get factorModel
     *
     * @return \AppBundle\Entity\Factor_model
     */
    public function getFactorModel()
    {
        return $this->factor_model;
    }

    /**
     * Get factorModel
     *
     * @return \AppBundle\Entity\Factor_model
     */
    public function getFactor_model()
    {
        return $this->factor_model;
    }
    
    public function __toString(){

        return $this->nombre;

    }

    public function __construct() {
        $this->indicadores_model = new ArrayCollection();
    }

    /**
     * Add indicadoresModel
     *
     * @param \AppBundle\Entity\Indicador_model $indicadoresModel
     *
     * @return Caracteristica_model
     */
    public function addIndicadoresModel(\AppBundle\Entity\Indicador_model $indicadoresModel)
    {
        $this->indicadores_model[] = $indicadoresModel;

        return $this;
    }

    /**
     * Remove indicadoresModel
     *
     * @param \AppBundle\Entity\Indicador_model $indicadoresModel
     */
    public function removeIndicadoresModel(\AppBundle\Entity\Indicador_model $indicadoresModel)
    {
        $this->indicadores_model->removeElement($indicadoresModel);
    }

    /**
     * Get indicadoresModel
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getIndicadoresModel()
    {
        return $this->indicadores_model;
    }
}
