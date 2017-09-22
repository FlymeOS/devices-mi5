.class public Lcom/miui/internal/log/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_LOG_LENGTH:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "Logger"


# instance fields
.field private fZ:Lcom/miui/internal/log/Level;

.field private ga:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/miui/internal/log/appender/Appender;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miui/internal/log/Logger;->mName:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    iput-object v0, p0, Lcom/miui/internal/log/Logger;->fZ:Lcom/miui/internal/log/Level;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/log/Logger;->ga:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    return-void
.end method

.method private doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V
    .locals 9

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/internal/log/Logger;->fZ:Lcom/miui/internal/log/Level;

    invoke-virtual {p1, v0}, Lcom/miui/internal/log/Level;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 112
    iget-object v0, p0, Lcom/miui/internal/log/Logger;->ga:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/log/appender/Appender;

    .line 113
    if-nez p3, :cond_0

    .line 114
    iget-object v2, p0, Lcom/miui/internal/log/Logger;->mName:Ljava/lang/String;

    move-object v3, p2

    move-object v6, p1

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/miui/internal/log/appender/Appender;->append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/log/Logger;->mName:Ljava/lang/String;

    move-object v3, p2

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/miui/internal/log/appender/Appender;->append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method public addAppender(Lcom/miui/internal/log/appender/Appender;)V
    .locals 2

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Appender not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/log/Logger;->ga:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public getAppenderAt(I)Lcom/miui/internal/log/appender/Appender;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/internal/log/Logger;->ga:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/appender/Appender;

    return-object v0
.end method

.method public getAppenderCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/internal/log/Logger;->ga:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLevel()Lcom/miui/internal/log/Level;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/internal/log/Logger;->fZ:Lcom/miui/internal/log/Level;

    return-object v0
.end method

.method public log(Lcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/log/Logger;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 107
    return-void
.end method

.method public log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/log/Logger;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 99
    return-void
.end method

.method public log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 102
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/log/Logger;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 103
    return-void
.end method

.method public removeAppender(Lcom/miui/internal/log/appender/Appender;)V
    .locals 2

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The appender must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-interface {p1}, Lcom/miui/internal/log/appender/Appender;->close()V

    .line 75
    iget-object v0, p0, Lcom/miui/internal/log/Logger;->ga:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public setLevel(Lcom/miui/internal/log/Level;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/internal/log/Logger;->fZ:Lcom/miui/internal/log/Level;

    .line 42
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/internal/log/Logger;->ga:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/appender/Appender;

    .line 124
    invoke-interface {v0}, Lcom/miui/internal/log/appender/Appender;->close()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/log/Logger;->ga:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 127
    return-void
.end method
