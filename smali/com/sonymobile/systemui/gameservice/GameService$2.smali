.class Lcom/sonymobile/systemui/gameservice/GameService$2;
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

    .line 121
    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$2;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;-><init>(Lcom/sonymobile/systemui/gameservice/GameService;Lcom/sonymobile/systemui/gameservice/GameService$1;)V

    return-void
.end method


# virtual methods
.method protected onClientRemoved(I)V
    .locals 7

    .line 124
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$2;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0, p1}, Lcom/sonymobile/systemui/gameservice/GameService;->access$600(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/GameButton;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/GameButton;->setDrawable(Ljava/lang/String;IIIZ)V

    .line 125
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$2;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/gameservice/GameService;->access$600(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/GameButton;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
