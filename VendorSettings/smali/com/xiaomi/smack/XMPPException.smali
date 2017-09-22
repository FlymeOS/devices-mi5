.class public Lcom/xiaomi/smack/XMPPException;
.super Ljava/lang/Exception;
.source "XMPPException.java"


# instance fields
.field private error:Lcom/xiaomi/smack/packet/h;

.field private streamError:Lcom/xiaomi/smack/packet/g;

.field private wrappedThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->streamError:Lcom/xiaomi/smack/packet/g;

    .line 46
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->error:Lcom/xiaomi/smack/packet/h;

    .line 48
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smack/packet/g;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->streamError:Lcom/xiaomi/smack/packet/g;

    .line 46
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->error:Lcom/xiaomi/smack/packet/h;

    .line 48
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 86
    iput-object p1, p0, Lcom/xiaomi/smack/XMPPException;->streamError:Lcom/xiaomi/smack/packet/g;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->streamError:Lcom/xiaomi/smack/packet/g;

    .line 46
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->error:Lcom/xiaomi/smack/packet/h;

    .line 48
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->streamError:Lcom/xiaomi/smack/packet/g;

    .line 46
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->error:Lcom/xiaomi/smack/packet/h;

    .line 48
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 109
    iput-object p2, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->streamError:Lcom/xiaomi/smack/packet/g;

    .line 46
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->error:Lcom/xiaomi/smack/packet/h;

    .line 48
    iput-object v0, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 74
    iput-object p1, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 75
    return-void
.end method


# virtual methods
.method public Kc()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/smack/XMPPException;->error:Lcom/xiaomi/smack/packet/h;

    if-eqz v1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/xiaomi/smack/XMPPException;->error:Lcom/xiaomi/smack/packet/h;

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/h;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 196
    :cond_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/XMPPException;->streamError:Lcom/xiaomi/smack/packet/g;

    if-eqz v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaomi/smack/XMPPException;->streamError:Lcom/xiaomi/smack/packet/g;

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/g;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smack/XMPPException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 172
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 176
    iget-object v0, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 180
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 184
    iget-object v0, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 188
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smack/XMPPException;->error:Lcom/xiaomi/smack/packet/h;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/xiaomi/smack/XMPPException;->error:Lcom/xiaomi/smack/packet/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/smack/XMPPException;->streamError:Lcom/xiaomi/smack/packet/g;

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/xiaomi/smack/XMPPException;->streamError:Lcom/xiaomi/smack/packet/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 215
    const-string v1, "\n  -- caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
