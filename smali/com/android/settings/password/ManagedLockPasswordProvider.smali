.class public Lcom/android/settings/password/ManagedLockPasswordProvider;
.super Ljava/lang/Object;
.source "ManagedLockPasswordProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;
    .locals 0

    .line 32
    new-instance p0, Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-direct {p0}, Lcom/android/settings/password/ManagedLockPasswordProvider;-><init>()V

    return-object p0
.end method


# virtual methods
.method createIntent(Z[B)Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getPickerOptionTitle(Z)Ljava/lang/CharSequence;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method isManagedPasswordChoosable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isSettingManagedPasswordSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
