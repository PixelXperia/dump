.class Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$6;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Landroid/os/Handler;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$6;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$6;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$800(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    return-void
.end method
