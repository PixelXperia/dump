.class public Lcom/android/settings/security/SdCryptKeeperSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SdCryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/SdCryptKeeperSettings$EncryptionWorker;
    }
.end annotation


# static fields
.field private static encryptionWorker:Lcom/android/settings/security/SdCryptKeeperSettings$EncryptionWorker;

.field private static mActivity:Landroid/app/Activity;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mSdEncrypt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/security/SdCryptKeeperSettings;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/settings/security/SdCryptKeeperSettings;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/settings/security/SdCryptKeeperSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private executeEncryptionWork()V
    .locals 4

    :try_start_0
    const-string v0, "SdCryptKeeperSettings"

    const-string v1, "start sd card encrypting..."

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-boolean p0, p0, Lcom/android/settings/security/SdCryptKeeperSettings;->mSdEncrypt:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 126
    :goto_0
    sget-object v1, Lcom/android/settings/security/SdCryptKeeperSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    sget-object v2, Lcom/android/settings/security/SdCryptKeeperSettings;->encryptionWorker:Lcom/android/settings/security/SdCryptKeeperSettings$EncryptionWorker;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/settings/security/SdCryptKeeperSettings;->encryptionWorker:Lcom/android/settings/security/SdCryptKeeperSettings$EncryptionWorker;

    .line 129
    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "SdCryptKeeperSettings"

    const-string v0, "Another encryption task is already running"

    .line 139
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 131
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/settings/security/SdCryptKeeperSettings;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a033a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    sget-object v2, Lcom/android/settings/security/SdCryptKeeperSettings;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a011f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    new-instance v2, Lcom/android/settings/security/SdCryptKeeperSettings$EncryptionWorker;

    invoke-direct {v2, p0}, Lcom/android/settings/security/SdCryptKeeperSettings$EncryptionWorker;-><init>(Z)V

    sput-object v2, Lcom/android/settings/security/SdCryptKeeperSettings;->encryptionWorker:Lcom/android/settings/security/SdCryptKeeperSettings$EncryptionWorker;

    .line 136
    sget-object p0, Lcom/android/settings/security/SdCryptKeeperSettings;->encryptionWorker:Lcom/android/settings/security/SdCryptKeeperSettings$EncryptionWorker;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    :goto_2
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "SdCryptKeeperSettings"

    const-string v1, "Exception while encrypting/decrypting:"

    .line 143
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public synthetic lambda$onCreateView$0$SdCryptKeeperSettings(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/security/SdCryptKeeperSettings;->executeEncryptionWork()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 151
    sget-object p0, Lcom/android/settings/security/SdCryptKeeperSettings;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 152
    :try_start_0
    sput-object p1, Lcom/android/settings/security/SdCryptKeeperSettings;->mActivity:Landroid/app/Activity;

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p2, 0x7f0d0169

    const/4 p3, 0x0

    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 42
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 44
    sget-object p3, Lcom/android/settings/security/SdCryptKeeperSettings;->encryptionWorker:Lcom/android/settings/security/SdCryptKeeperSettings$EncryptionWorker;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p3

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p3, v2, :cond_0

    const p0, 0x7f0a011f

    .line 45
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0a033a

    .line 46
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    :cond_0
    const p3, 0x7f0a038e

    .line 49
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v2, 0x7f0a038d

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0211

    .line 51
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 57
    new-instance v4, Lcom/android/settings/security/-$$Lambda$SdCryptKeeperSettings$qdLBM09wRazAdUWQWp687bi5AEM;

    invoke-direct {v4, p0}, Lcom/android/settings/security/-$$Lambda$SdCryptKeeperSettings$qdLBM09wRazAdUWQWp687bi5AEM;-><init>(Lcom/android/settings/security/SdCryptKeeperSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    .line 62
    :goto_0
    invoke-virtual {v3, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 64
    invoke-static {p2}, Lcom/sonymobile/settings/sdcardencryption/Utils;->isExternalSdCardEncrypted(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/security/SdCryptKeeperSettings;->mSdEncrypt:Z

    .line 65
    iget-boolean p0, p0, Lcom/android/settings/security/SdCryptKeeperSettings;->mSdEncrypt:Z

    if-eqz p0, :cond_2

    const p0, 0x7f120f01

    .line 66
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setText(I)V

    .line 68
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const p0, 0x7f120efa

    .line 71
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setText(I)V

    .line 72
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p1
.end method
