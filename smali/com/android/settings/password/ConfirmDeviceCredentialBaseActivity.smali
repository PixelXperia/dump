.class public abstract Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    }
.end annotation


# instance fields
.field private mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private final mCancelCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

.field private mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private mIsKeyguardLocked:Z

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    .line 56
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mCancelCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    return-void
.end method

.method private getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
    .locals 1

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f0a025d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 152
    instance-of v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    if-eqz v0, :cond_0

    .line 153
    check-cast p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isInternalActivity()Z
    .locals 1

    .line 65
    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.android.settings.ConfirmCredentials.useFadeAnimation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f010019

    .line 183
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isInternalActivity()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v0

    .line 73
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f130279

    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 82
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->WORK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f130278

    .line 85
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 86
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 89
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    .line 91
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 94
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mCancelCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/biometrics/BiometricManager;->registerCancellationCallback(Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v0, v2, :cond_2

    const v0, 0x7f0a0118

    .line 99
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 101
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    if-nez p1, :cond_3

    .line 103
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    goto :goto_1

    :cond_3
    const-string v0, "STATE_IS_KEYGUARD_LOCKED"

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_5
    if-eqz p1, :cond_6

    move v1, v2

    .line 121
    :cond_6
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ConfirmDeviceCredentialBaseActivity"

    const-string v1, "Invalid user Id supplied"

    .line 76
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 161
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 136
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    const-string v0, "STATE_IS_KEYGUARD_LOCKED"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 169
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    const/16 v1, 0xa

    const v2, 0x1040113

    .line 174
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-virtual {v0, v1, p0}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    return-void
.end method

.method public startEnterAnimation()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    return-void
.end method
