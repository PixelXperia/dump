.class Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$3;
.super Landroid/os/Handler;
.source "FingerPrintFeedBackView.java"


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

    .line 141
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$3;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 144
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 145
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$3;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$002(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;Z)Z

    .line 146
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$3;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$200(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$3;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-static {p1, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$302(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;Z)Z

    .line 149
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$3;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$200(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 151
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$3;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 153
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$3;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$200(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V

    :cond_3
    :goto_0
    return-void
.end method
