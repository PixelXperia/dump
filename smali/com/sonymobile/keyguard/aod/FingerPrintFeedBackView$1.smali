.class Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$1;
.super Ljava/lang/Object;
.source "FingerPrintFeedBackView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$1;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOn()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$1;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$000(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$1;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$100(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$1;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$100(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
