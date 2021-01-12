.class Lcom/sonymobile/systemui/gameservice/GameService$3;
.super Lcom/sonymobile/systemui/gameservice/IGameService$Stub;
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
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonymobile/systemui/gameservice/GameService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-direct {p0}, Lcom/sonymobile/systemui/gameservice/IGameService$Stub;-><init>()V

    .line 213
    iget-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public gameSetColoredIcon(Landroid/os/IBinder;IIII)V
    .locals 10

    .line 255
    invoke-direct {p0}, Lcom/sonymobile/systemui/gameservice/GameService$3;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 256
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$000(Lcom/sonymobile/systemui/gameservice/GameService;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Z_TRwRAbTGj1Y3mELpJI5PZUDxk;-><init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;ILjava/lang/String;III)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public gameSetIcon(Landroid/os/IBinder;II)V
    .locals 8

    .line 244
    invoke-direct {p0}, Lcom/sonymobile/systemui/gameservice/GameService$3;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 245
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$000(Lcom/sonymobile/systemui/gameservice/GameService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rGadQN2PCMWgFWeRzfIO_DA93Xg;-><init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;ILjava/lang/String;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public gameSetOnGestureListener(Landroid/os/IBinder;ILcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$000(Lcom/sonymobile/systemui/gameservice/GameService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;-><init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;ILcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public gameUnsetIcon(Landroid/os/IBinder;I)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$000(Lcom/sonymobile/systemui/gameservice/GameService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$GPLklYgMP5z36Q_RCqkzbuehrdk;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$GPLklYgMP5z36Q_RCqkzbuehrdk;-><init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public gameUnsetOnGestureListener(Landroid/os/IBinder;I)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$000(Lcom/sonymobile/systemui/gameservice/GameService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rkx607LmT96JtoeYIJWLwlTD0hk;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$rkx607LmT96JtoeYIJWLwlTD0hk;-><init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$gameSetColoredIcon$3$GameService$3(Landroid/os/IBinder;ILjava/lang/String;III)V
    .locals 6

    .line 257
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$700(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->access$800(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$700(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->access$1000(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p0, p2}, Lcom/sonymobile/systemui/gameservice/GameService;->access$600(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/GameButton;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/GameButton;->setDrawable(Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$gameSetIcon$2$GameService$3(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$700(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->access$800(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$700(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->access$1000(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p0, p2}, Lcom/sonymobile/systemui/gameservice/GameService;->access$600(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/GameButton;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/GameButton;->setDrawable(Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$gameSetOnGestureListener$5$GameService$3(Landroid/os/IBinder;ILcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$700(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->access$800(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService;->access$600(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/GameButton;

    move-result-object p1

    new-instance v0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureDetector;

    iget-object v1, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;

    invoke-direct {v2, v1, p2, p3}, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;-><init>(Lcom/sonymobile/systemui/gameservice/GameService;ILcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureDetector;-><init>(Lcom/sonymobile/systemui/gameservice/GameService;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$gameUnsetIcon$4$GameService$3(Landroid/os/IBinder;I)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$700(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->access$900(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)V

    return-void
.end method

.method public synthetic lambda$gameUnsetOnGestureListener$6$GameService$3(Landroid/os/IBinder;I)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$700(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->access$800(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p0, p2}, Lcom/sonymobile/systemui/gameservice/GameService;->access$600(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/GameButton;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$lockSetEnabled$1$GameService$3(ZLandroid/os/IBinder;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p1}, Lcom/sonymobile/systemui/gameservice/GameService;->access$1100(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->access$1000(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p0, p3}, Lcom/sonymobile/systemui/gameservice/GameService;->access$500(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/NavigationBarLockController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockController;->setEnabled(Z)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$1100(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->access$900(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$lockSetReLockDelay$0$GameService$3(Landroid/os/IBinder;IJ)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$1100(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->access$800(Lcom/sonymobile/systemui/gameservice/GameService$ClientList;Landroid/os/IBinder;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p0, p2}, Lcom/sonymobile/systemui/gameservice/GameService;->access$500(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/NavigationBarLockController;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarLockController;->setReLockDelay(J)V

    :cond_0
    return-void
.end method

.method public lockSetEnabled(Landroid/os/IBinder;IZ)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$000(Lcom/sonymobile/systemui/gameservice/GameService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$21GgSDne98B9bzwN-aIlzrxq-Xc;-><init>(Lcom/sonymobile/systemui/gameservice/GameService$3;ZLandroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public lockSetReLockDelay(Landroid/os/IBinder;IJ)V
    .locals 8

    .line 222
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$3;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {v0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$000(Lcom/sonymobile/systemui/gameservice/GameService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$Piqmg4XlAazQqbLMOZD4WydiIhg;-><init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;IJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
