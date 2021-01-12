.class Lcom/sonymobile/systemui/gameservice/GameService$1;
.super Lcom/sonymobile/systemui/gameservice/GameService$ClientList;
.source "GameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/gameservice/GameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/gameservice/GameService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService;)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$1;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;-><init>(Lcom/sonymobile/systemui/gameservice/GameService;Lcom/sonymobile/systemui/gameservice/GameService$1;)V

    return-void
.end method


# virtual methods
.method protected onClientRemoved(I)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$1;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/gameservice/GameService;->access$500(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/NavigationBarLockController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockController;->setEnabled(Z)V

    return-void
.end method
