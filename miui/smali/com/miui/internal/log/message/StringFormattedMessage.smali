.class public Lcom/miui/internal/log/message/StringFormattedMessage;
.super Lcom/miui/internal/log/message/AbstractMessage;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "StringFormattedMessage"


# instance fields
.field private gX:Ljava/lang/String;

.field private gY:[Ljava/lang/Object;

.field private gZ:Ljava/lang/Throwable;

.field private ha:Lcom/miui/internal/log/util/AppendableFormatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/miui/internal/log/message/AbstractMessage;-><init>()V

    .line 27
    new-instance v0, Lcom/miui/internal/log/util/AppendableFormatter;

    invoke-direct {v0}, Lcom/miui/internal/log/util/AppendableFormatter;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->ha:Lcom/miui/internal/log/util/AppendableFormatter;

    .line 28
    return-void
.end method

.method public static obtain()Lcom/miui/internal/log/message/StringFormattedMessage;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/miui/internal/log/message/StringFormattedMessage;

    invoke-static {v0}, Lcom/miui/internal/log/message/MessageFactory;->obtain(Ljava/lang/Class;)Lcom/miui/internal/log/message/Message;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/message/StringFormattedMessage;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Appendable;)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gX:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gY:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gY:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gX:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "StringFormattedMessage"

    const-string v2, "Fail to format message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->ha:Lcom/miui/internal/log/util/AppendableFormatter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/log/util/AppendableFormatter;->setAppendable(Ljava/lang/Appendable;)V

    .line 82
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->ha:Lcom/miui/internal/log/util/AppendableFormatter;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gX:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gY:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/log/util/AppendableFormatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Lcom/miui/internal/log/util/AppendableFormatter;

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gX:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gY:[Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gZ:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected onRecycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gX:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gY:[Ljava/lang/Object;

    .line 68
    iput-object v1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gZ:Ljava/lang/Throwable;

    .line 69
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->ha:Lcom/miui/internal/log/util/AppendableFormatter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/util/AppendableFormatter;->setAppendable(Ljava/lang/Appendable;)V

    .line 70
    return-void
.end method

.method public setFormat(Ljava/lang/String;)Lcom/miui/internal/log/message/StringFormattedMessage;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gX:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public setParameters([Ljava/lang/Object;)Lcom/miui/internal/log/message/StringFormattedMessage;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gY:[Ljava/lang/Object;

    .line 61
    return-object p0
.end method

.method public setThrowable(Ljava/lang/Throwable;)Lcom/miui/internal/log/message/StringFormattedMessage;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->gZ:Ljava/lang/Throwable;

    .line 97
    return-object p0
.end method
