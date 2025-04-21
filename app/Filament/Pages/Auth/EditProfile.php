<?php

namespace App\Filament\Pages\Auth;

use Filament\Forms\Components\Component;
use Filament\Forms\Components\FileUpload;
use Filament\Pages\Auth\EditProfile as BasePage;
 
class EditProfile extends BasePage
{
    protected function getProfileImageFormComponent(): Component
    {
        return FileUpload::make('profile_image')
            ->image()
            ->directory('profiles')
            ->imageEditor()
            ->imageEditorAspectRatios(['1:1'])
            ->maxSize(2048);
    }

    protected function getForms(): array
    {
        return [
            'form' => $this->form(
                $this->makeForm()
                    ->schema([
                        $this->getProfileImageFormComponent(),
                        $this->getNameFormComponent(),
                        $this->getEmailFormComponent(),
                        $this->getPasswordFormComponent(),
                        $this->getPasswordConfirmationFormComponent(),
                    ])
                    ->operation('edit')
                    ->model($this->getUser())
                    ->statePath('data')
                    ->inlineLabel(! static::isSimple()),
            ),
        ];
    }
}