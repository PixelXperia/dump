.class public Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;
.super Ljava/lang/Object;
.source "RealPinAutoUnlockSettingsSecureWrapper.java"

# interfaces
.implements Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final enableAutoUnlock()V
    .locals 3

    .line 67
    iget-object p0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "somc.lockscreen_type_is_pin_and_exactly_4_digits"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final isAutoUnlockEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 52
    :try_start_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "somc.lockscreen_type_is_pin_and_exactly_4_digits"

    const/4 v2, -0x2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    const-class v1, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method
