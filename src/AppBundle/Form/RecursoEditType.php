<?php

namespace AppBundle\Form;

use AppBundle\Entity\Recurso;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class RecursoEditType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('nombre', TextType::class, array('label' => 'Nombre del recurso', 'required' => true, 'disabled' => true))
                ->add('indicadores', EntityType::class,
                    [
                        'class'=>'AppBundle:Indicador',
                        'choice_label'=>'nombre',
                        'label'=>'Indicadores a los que esta asociado',
                        'placeholder'=>'Seleccione los indicadores a los que desea asociar el recurso',
                        'multiple'=>true,
                    ]);
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Recurso'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_recurso';
    }


}
