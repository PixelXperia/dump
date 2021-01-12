.class Lcom/sonymobile/keyguard/aod/AodView$1;
.super Ljava/lang/Object;
.source "AodView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/aod/AodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/aod/AodView;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/aod/AodView;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView$1;->this$0:Lcom/sonymobile/keyguard/aod/AodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOn()V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView$1;->this$0:Lcom/sonymobile/keyguard/aod/AodView;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/aod/AodView;->dozeTimeTick()V

    return-void
.end method
