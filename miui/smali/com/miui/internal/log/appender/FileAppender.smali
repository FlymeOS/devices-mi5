.class public Lcom/miui/internal/log/appender/FileAppender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/log/appender/Appender;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileAppender"


# instance fields
.field private gj:Lcom/miui/internal/log/format/Formatter;

.field private gk:Lcom/miui/internal/log/appender/FileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V
    .locals 9

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->gj:Lcom/miui/internal/log/format/Formatter;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "FileAppender"

    const-string v1, "Fail to append log for formatter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->gk:Lcom/miui/internal/log/appender/FileManager;

    if-nez v0, :cond_1

    .line 61
    const-string v0, "FileAppender"

    const-string v1, "Fail to append log for FileManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    if-nez p6, :cond_2

    .line 65
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->gk:Lcom/miui/internal/log/appender/FileManager;

    iget-object v1, p0, Lcom/miui/internal/log/appender/FileAppender;->gj:Lcom/miui/internal/log/format/Formatter;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p8

    invoke-interface/range {v1 .. v7}, Lcom/miui/internal/log/format/Formatter;->format(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/appender/FileManager;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->gk:Lcom/miui/internal/log/appender/FileManager;

    iget-object v1, p0, Lcom/miui/internal/log/appender/FileAppender;->gj:Lcom/miui/internal/log/format/Formatter;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/miui/internal/log/format/Formatter;->format(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/appender/FileManager;->write(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)V
    .locals 11

    .prologue
    .line 52
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/miui/internal/log/appender/FileAppender;->a(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 53
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11

    .prologue
    .line 47
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/miui/internal/log/appender/FileAppender;->a(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 48
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->gk:Lcom/miui/internal/log/appender/FileManager;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->gk:Lcom/miui/internal/log/appender/FileManager;

    invoke-virtual {v0}, Lcom/miui/internal/log/appender/FileManager;->close()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->gk:Lcom/miui/internal/log/appender/FileManager;

    .line 77
    :cond_0
    return-void
.end method

.method public getFileManager()Lcom/miui/internal/log/appender/FileManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->gk:Lcom/miui/internal/log/appender/FileManager;

    return-object v0
.end method

.method public getFormatter()Lcom/miui/internal/log/format/Formatter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->gj:Lcom/miui/internal/log/format/Formatter;

    return-object v0
.end method

.method public setFileManager(Lcom/miui/internal/log/appender/FileManager;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->gk:Lcom/miui/internal/log/appender/FileManager;

    if-ne v0, p1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/log/appender/FileAppender;->close()V

    .line 38
    iput-object p1, p0, Lcom/miui/internal/log/appender/FileAppender;->gk:Lcom/miui/internal/log/appender/FileManager;

    goto :goto_0
.end method

.method public setFormatter(Lcom/miui/internal/log/format/Formatter;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/miui/internal/log/appender/FileAppender;->gj:Lcom/miui/internal/log/format/Formatter;

    .line 26
    return-void
.end method
