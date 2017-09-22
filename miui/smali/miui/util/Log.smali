.class public Lmiui/util/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/Log$1;,
        Lmiui/util/Log$b;,
        Lmiui/util/Log$Facade;,
        Lmiui/util/Log$c;,
        Lmiui/util/Log$a;,
        Lmiui/util/Log$d;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 135
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 300
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    return-void
.end method

.method public static varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    return-void
.end method

.method public static varargs fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method public static getFileLogger()Lmiui/util/Log$Facade;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lmiui/util/Log$a;->Ic:Lmiui/util/Log$Facade;

    return-object v0
.end method

.method public static getFullLogger()Lmiui/util/Log$Facade;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lmiui/util/Log$c;->Ic:Lmiui/util/Log$Facade;

    return-object v0
.end method

.method public static getLogcatLogger()Lmiui/util/Log$Facade;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 190
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    return-void
.end method

.method public static varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 245
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lmiui/util/Log$d;->Ic:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 346
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 358
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    return-void
.end method
