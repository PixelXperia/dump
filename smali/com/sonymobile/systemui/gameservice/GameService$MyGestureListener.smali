.class final Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/gameservice/GameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyGestureListener"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private final mListener:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

.field final synthetic this$0:Lcom/sonymobile/systemui/gameservice/GameService;


# direct methods
.method public constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService;ILcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 145
    iput p2, p0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->mDisplayId:I

    .line 146
    iput-object p3, p0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->mListener:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    return-void
.end method

.method static synthetic lambda$onGesture$0(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 2

    .line 153
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client gesture listener failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GameService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onGesture(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;I)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    iget v1, p0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->mDisplayId:I

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/gameservice/GameService;->access$600(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/GameButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 151
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    invoke-static {p0}, Lcom/sonymobile/systemui/gameservice/GameService;->access$000(Lcom/sonymobile/systemui/gameservice/GameService;)Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$MyGestureListener$YFm7f3AKGpzLozXqIAjcAviD68U;

    invoke-direct {p2, p1}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$MyGestureListener$YFm7f3AKGpzLozXqIAjcAviD68U;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 173
    iget-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->mListener:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sonymobile/systemui/gameservice/-$$Lambda$kDl_8hIwBRFk2fYDGKIsNtj1PmQ;

    invoke-direct {v1, p1}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$kDl_8hIwBRFk2fYDGKIsNtj1PmQ;-><init>(Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->onGesture(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;I)V

    :cond_0
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->mListener:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$OiV5P6maFYtyjaMH6e7Ba2vMRNo;

    invoke-direct {v0, p1}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$OiV5P6maFYtyjaMH6e7Ba2vMRNo;-><init>(Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->onGesture(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;I)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->mListener:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$AHbNOSMYlukXXck6QzZFMJpQmxk;

    invoke-direct {v0, p1}, Lcom/sonymobile/systemui/gameservice/-$$Lambda$AHbNOSMYlukXXck6QzZFMJpQmxk;-><init>(Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->onGesture(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;I)V

    return p1
.end method
