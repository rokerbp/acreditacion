<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Indicador
 *
 * @ORM\Table(name="indicador")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\IndicadorRepository")
 */
class Indicador
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
     * @ORM\Column(name="ripcion", type="text", nullable=true)
     */
    private $ripcion;


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
     * @return Indicador
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
     * Set ripcion
     *
     * @param string $ripcion
     *
     * @return Indicador
     */
    public function setRipcion($ripcion)
    {
        $this->ripcion = $ripcion;

        return $this;
    }

    /**
     * Get ripcion
     *
     * @return string
     */
    public function getRipcion()
    {
        return $this->ripcion;
    }
}

