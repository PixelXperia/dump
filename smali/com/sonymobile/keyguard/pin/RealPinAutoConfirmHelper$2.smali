.class Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;
.super Ljava/lang/Object;
.source "RealPinAutoConfirmHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->onUnlockFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->access$000(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isContentLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->access$000(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    .line 222
    iget-object p0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-static {p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->access$000(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    :cond_0
    return-void
.end method
