.class public final synthetic Lcom/sonymobile/systemui/gameservice/-$$Lambda$kDl_8hIwBRFk2fYDGKIsNtj1PmQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$kDl_8hIwBRFk2fYDGKIsNtj1PmQ;->f$0:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$kDl_8hIwBRFk2fYDGKIsNtj1PmQ;->f$0:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    invoke-interface {p0}, Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;->onGameButtonDoubleTap()V

    return-void
.end method
