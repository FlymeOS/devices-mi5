.class public final Lmiui/log/MiuiLog;
.super Ljava/lang/Object;
.source "MiuiLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static d(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public static d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static e(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method

.method public static e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static i(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public static i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    if-eqz p1, :cond_1

    .line 79
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    if-eqz p1, :cond_1

    .line 93
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isLoggable(Lmiui/log/MiuiTag;I)Z
    .locals 1
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "level"    # I

    .prologue
    .line 11
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static println(ILjava/lang/Object;ILjava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tagID"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p2}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lmiui/log/MiuiLog;->println(ILjava/lang/Object;Lmiui/log/MiuiTag;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static println(ILjava/lang/Object;Lmiui/log/MiuiTag;Ljava/lang/String;)V
    .locals 5
    .param p0, "priority"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tag"    # Lmiui/log/MiuiTag;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-virtual {p2}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    if-eqz p1, :cond_1

    .line 233
    iget-object v0, p2, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p2, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {p0, v0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static v(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public static v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    if-eqz p1, :cond_1

    .line 23
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    if-eqz p1, :cond_1

    .line 37
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 130
    return-void
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    if-eqz p1, :cond_1

    .line 121
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 199
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    if-eqz p1, :cond_1

    .line 177
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 217
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    if-eqz p1, :cond_1

    .line 219
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 203
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    if-eqz p1, :cond_1

    .line 205
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtfStack(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->wtfStack(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static wtfStack(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
