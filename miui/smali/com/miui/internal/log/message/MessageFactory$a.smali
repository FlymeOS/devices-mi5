.class Lcom/miui/internal/log/message/MessageFactory$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/log/message/MessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/internal/log/message/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private gU:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private gV:[Lcom/miui/internal/log/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private gW:I


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;[Lcom/miui/internal/log/message/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gU:Ljava/lang/reflect/Constructor;

    .line 53
    iput-object p2, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gV:[Lcom/miui/internal/log/message/Message;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gW:I

    .line 55
    return-void
.end method

.method private L()Lcom/miui/internal/log/message/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gU:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/message/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "MessageFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to construct new instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gU:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;I)Lcom/miui/internal/log/message/MessageFactory$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/internal/log/message/Message;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lcom/miui/internal/log/message/MessageFactory$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 40
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/log/message/Message;

    check-cast v0, [Lcom/miui/internal/log/message/Message;

    .line 41
    new-instance v2, Lcom/miui/internal/log/message/MessageFactory$a;

    invoke-direct {v2, v1, v0}, Lcom/miui/internal/log/message/MessageFactory$a;-><init>(Ljava/lang/reflect/Constructor;[Lcom/miui/internal/log/message/Message;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a public empty constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized K()Lcom/miui/internal/log/message/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gW:I

    if-lez v0, :cond_0

    .line 59
    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gW:I

    .line 60
    iget-object v0, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gV:[Lcom/miui/internal/log/message/Message;

    iget v1, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gW:I

    aget-object v0, v0, v1

    .line 61
    invoke-interface {v0}, Lcom/miui/internal/log/message/Message;->prepareForReuse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/miui/internal/log/message/MessageFactory$a;->L()Lcom/miui/internal/log/message/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/miui/internal/log/message/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gW:I

    iget-object v1, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gV:[Lcom/miui/internal/log/message/Message;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gV:[Lcom/miui/internal/log/message/Message;

    iget v1, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gW:I

    aput-object p1, v0, v1

    .line 71
    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/internal/log/message/MessageFactory$a;->gW:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
