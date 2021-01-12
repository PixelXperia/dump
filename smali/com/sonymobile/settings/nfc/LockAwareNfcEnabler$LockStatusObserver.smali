.class Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler$LockStatusObserver;
.super Landroid/database/ContentObserver;
.source "LockAwareNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;Landroid/os/Handler;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler$LockStatusObserver;->this$0:Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;

    .line 81
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler$LockStatusObserver;->this$0:Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;

    invoke-static {p0}, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->access$000(Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/nfc/LockAwareNfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method
