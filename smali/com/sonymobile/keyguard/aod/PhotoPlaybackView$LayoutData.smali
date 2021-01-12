.class Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;
.super Ljava/lang/Object;
.source "PhotoPlaybackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutData"
.end annotation


# instance fields
.field radius:I

.field final synthetic this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;->x:I

    .line 142
    iput p3, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;->y:I

    .line 143
    iput p4, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;->radius:I

    return-void
.end method
