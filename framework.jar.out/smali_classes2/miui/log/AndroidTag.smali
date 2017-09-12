.class public final Lmiui/log/AndroidTag;
.super Ljava/lang/Object;
.source "AndroidTag.java"

# interfaces
.implements Lmiui/log/ILogTag;


# static fields
.field static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;


# instance fields
.field public final className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private clazzLoaded:Z

.field public final defaultOn:Z

.field public final fieldFullPath:Ljava/lang/String;

.field public final fieldName:Ljava/lang/String;

.field private isTagOn:Z

.field private onNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "defaultOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lmiui/log/AndroidTag;->className:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    .line 41
    invoke-static {p2, p3}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/log/AndroidTag;->fieldFullPath:Ljava/lang/String;

    .line 42
    iput-boolean p4, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    .line 43
    iput-boolean p4, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 44
    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    .line 45
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    .line 46
    iput-object p1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "defaultOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "defaultOn"    # Z

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method static buildFieldFullPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadClass()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lmiui/log/AndroidTag;->className:Ljava/lang/String;

    sget-object v1, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .locals 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/log/AndroidTag;->loadClass()V

    .line 71
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    .line 72
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    if-nez v0, :cond_1

    .line 73
    iget-boolean v0, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 74
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v1, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    :try_start_1
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 79
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v1, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchOn()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 54
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/log/AndroidTag;->loadClass()V

    .line 55
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    .line 56
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    if-nez v0, :cond_1

    .line 57
    iget-boolean v0, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 58
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v1, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_1
    :try_start_1
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 63
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v1, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
