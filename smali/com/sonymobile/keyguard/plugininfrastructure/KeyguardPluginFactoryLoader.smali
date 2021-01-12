.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;
.super Ljava/lang/Object;
.source "KeyguardPluginFactoryLoader.java"


# instance fields
.field private final mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

.field private final mKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

.field private mLastComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 80
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    .line 82
    iput-object p3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    return-void

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ClockPluginUserSelectionHandler can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DefaultKeyguardFactoryProvider can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getActiveKeyguardComponentFactoryComponentName()Landroid/content/ComponentName;
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->getActiveFullPluginClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private instantiateKeyguardComponentFactory()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    .locals 2

    .line 252
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->getActiveKeyguardComponentFactoryComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mLastComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->instantiateKeyguardComponentFactory(Landroid/content/ComponentName;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 257
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 259
    :goto_0
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mLastComponentName:Landroid/content/ComponentName;

    return-object v1
.end method

.method private instantiateKeyguardComponentFactory(Landroid/content/ComponentName;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    .locals 2

    const/4 v0, 0x0

    .line 268
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->loadKeyguardComponentFactoryClassFromComponentName(Landroid/content/ComponentName;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    new-array v1, p1, [Ljava/lang/Class;

    .line 272
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    .line 275
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardPluginFactoryLoader"

    .line 281
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method private loadKeyguardComponentFactoryClassFromComponentName(Landroid/content/ComponentName;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;",
            ">;"
        }
    .end annotation

    const-string v0, "KeyguardPluginFactoryLoader"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 170
    :try_start_0
    const-class v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    .line 171
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-direct {p0, v3, v4, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->loadUncheckedClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p0

    .line 177
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyguard plugin factory class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be found: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p0, v1

    :goto_1
    return-object p0
.end method

.method private loadUncheckedClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 200
    invoke-virtual {p3, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createComponentFactoryFromFactoryEntry(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    .locals 2

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->getFullyQualifiedClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->getFullyQualifiedClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->instantiateKeyguardComponentFactory(Landroid/content/ComponentName;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final createKeyguardClockView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    if-eqz v0, :cond_0

    .line 102
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Clock plugin should not assume where it shall end up. view = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardPluginFactoryLoader"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method public getActiveFullPluginClassName()Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->somc_keyguard_use_default_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.sonymobile.keyguard.plugin.digitalclock.DigitalClockKeyguardComponentFactory"

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;->getPresentableUserSelection()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;->getDefaultKeyguardFactoryClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final refreshLoader()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    .line 123
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->instantiateKeyguardComponentFactory()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    .line 124
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
