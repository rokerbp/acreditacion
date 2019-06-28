<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Indicador_model
 *
 * @ORM\Table(name="indicador_model")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\Indicador_modelRepository")
 */
class Indicador_model
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
     * @ORM\Column(name="nombre", type="text")
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="text", nullable=true)
     */
    private $descripcion;

    /**
     * Many Indicadores have One Caracteristica.
     * @ORM\ManyToOne(targetEntity="Caracteristica_model", inversedBy="indicadores_model", cascade={"persist"})
     * @ORM\JoinColumn(name="caracteristica_model", referencedColumnName="id")
     */
    private $caracteristica_model;


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
     * @return Indicador_model
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
     * @return Indicador_model
     */
    public function setRipcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string
     */
    public function getRipcion()
    {
        return $this->descripcion;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     *
     * @return Indicador_model
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
     * Set caracteristicaModel
     *
     * @param \AppBundle\Entity\Caracteristica_model $caracteristicaModel
     *
     * @return Indicador_model
     */
    public function setCaracteristicaModel(\AppBundle\Entity\Caracteristica_model $caracteristicaModel = null)
    {
        $this->caracteristica_model = $caracteristicaModel;

        return $this;
    }

    /**
     * Get caracteristicaModel
     *
     * @return \AppBundle\Entity\Caracteristica_model
     */
    public function getCaracteristicaModel()
    {
        return $this->caracteristica_model;
    }

    /**
     * Get caracteristicaModel
     *
     * @return \AppBundle\Entity\Caracteristica_model
     */
    public function getCaracteristica_model()
    {
        return $this->caracteristica_model;
    }

    
    public function __toString(){
        return $this->nombre;
    }
}
