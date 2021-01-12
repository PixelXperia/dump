.class Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$2;
.super Ljava/lang/Object;
.source "FingerPrintFeedBackView.java"

# interfaces
.implements Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;


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

    .line 86
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$2;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStyleCoverClosed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 90
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$2;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->switchIndication(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
