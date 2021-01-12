.class Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$1;
.super Landroid/os/Handler;
.source "PhotoPlaybackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$1;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 102
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$1;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$200(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$1;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$100(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$1;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$000(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
