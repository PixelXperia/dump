.class Lcom/android/systemui/doze/DozeTriggers$3;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$3;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStyleCoverClosed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 656
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$3;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeTriggers;->access$1200(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getSmartOn()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->access$1300(Lcom/android/systemui/doze/DozeTriggers;Z)V

    :cond_0
    return-void
.end method
