.class public Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;
.super Lcom/android/settings/nfc/NfcEnabler;
.source "LockAwareNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler$LockStatusObserver;
    }
.end annotation


# static fields
.field private static final LOCK_STATUS_URI:Landroid/net/Uri;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsLockSupported:Z

.field private final mObserver:Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler$LockStatusObserver;

.field private final mSwitchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sonymobile.nfc.clfstate.provider/lockstatus"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->LOCK_STATUS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mHandler:Landroid/os/Handler;

    .line 37
    iput-object p2, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    new-instance p2, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler$LockStatusObserver;

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler$LockStatusObserver;-><init>(Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mObserver:Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler$LockStatusObserver;

    .line 41
    invoke-static {p1}, Lcom/sonymobile/settings/nfc/NfcUtils;->isClfLockSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mIsLockSupported:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p0
.end method

.method private isLocked()Z
    .locals 3

    .line 70
    iget-object p0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->LOCK_STATUS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    .line 76
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 74
    :cond_1
    :try_start_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 75
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v0, v2

    :cond_2
    if-eqz p0, :cond_3

    .line 76
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :catchall_0
    move-exception v0

    .line 70
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_4

    .line 76
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 47
    iget-boolean p1, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mIsLockSupported:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    .line 64
    iget-boolean v0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mIsLockSupported:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mObserver:Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler$LockStatusObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .line 54
    invoke-super {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->resume()V

    .line 55
    iget-boolean v0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mIsLockSupported:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->LOCK_STATUS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->mObserver:Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler$LockStatusObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method
