.class final Lcom/android/settings/nfc/PaymentBackend$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/PaymentBackend;Landroid/content/Context;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsObserver;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    .line 233
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 238
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p1, :cond_0

    .line 240
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsObserver;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    :cond_0
    return-void
.end method
