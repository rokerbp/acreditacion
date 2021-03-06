<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Factor
 *
 * @ORM\Table(name="factor_model")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\Factor_modelRepository")
 */
class Factor_model
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
     * One Factor has Many Caracteristicas.
     * @ORM\OneToMany(targetEntity="Caracteristica_model", mappedBy="factor_model")
     */
    private $caracteristicas_model;

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
     * Set descripcion
     *
     * @param string $descripcion
     *
     * @return Factor
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
     * Generates the magic method
     * 
     */
    public function __toString(){
        return $this->nombre;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->caracteristicas_model = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add caracteristicasModel
     *
     * @param \AppBundle\Entity\Caracteristica_model $caracteristicasModel
     *
     * @return Factor_model
     */
    public function addCaracteristicasModel(\AppBundle\Entity\Caracteristica_model $caracteristicasModel)
    {
        $this->caracteristicas_model[] = $caracteristicasModel;

        return $this;
    }

    /**
     * Remove caracteristicasModel
     *
     * @param \AppBundle\Entity\Caracteristica_model $caracteristicasModel
     */
    public function removeCaracteristicasModel(\AppBundle\Entity\Caracteristica_model $caracteristicasModel)
    {
        $this->caracteristicas_model->removeElement($caracteristicasModel);
    }

    /**
     * Get caracteristicasModel
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getCaracteristicasModel()
    {
        return $this->caracteristicas_model;
    }

    /**
    * Clone
    */
    public function __clone()
    {
        if ($this->id) {
                $this->getId(null);
                $caracteristicas_model = $this->getCaracteristicasModel();
                $caracteristicas_modelArray = new ArrayCollection();
                foreach ($caracteristicas_model as $caracteristica_model) {
                    /** @var Catacteristica_model $caracteristica_model */
                    $caractestica = clone $caracteristica_model;
                    $caractestica->setFactorModel($this);
                    $caracteristicas_modelArray->add($caractestica);
                }
                $this->caracteristicas_model = $caracteristicas_modelArray;
        }
    }
}
