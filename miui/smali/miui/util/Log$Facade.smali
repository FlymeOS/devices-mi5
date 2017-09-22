.class public Lmiui/util/Log$Facade;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Facade"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LogcatFacade"


# instance fields
.field private Ib:Lcom/miui/internal/log/Logger;


# direct methods
.method private constructor <init>(Lcom/miui/internal/log/Logger;)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p1, p0, Lmiui/util/Log$Facade;->Ib:Lcom/miui/internal/log/Logger;

    .line 401
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/log/Logger;Lmiui/util/Log$1;)V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lmiui/util/Log$Facade;-><init>(Lcom/miui/internal/log/Logger;)V

    return-void
.end method

.method private varargs a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 599
    invoke-static {}, Lcom/miui/internal/log/message/StringFormattedMessage;->obtain()Lcom/miui/internal/log/message/StringFormattedMessage;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/internal/log/message/StringFormattedMessage;->setFormat(Ljava/lang/String;)Lcom/miui/internal/log/message/StringFormattedMessage;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/miui/internal/log/message/StringFormattedMessage;->setParameters([Ljava/lang/Object;)Lcom/miui/internal/log/message/StringFormattedMessage;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lmiui/util/Log$Facade;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 600
    return-void
.end method

.method private log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 595
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/util/Log$Facade;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 596
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 442
    sget-object v0, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 453
    sget-object v0, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    return-void
.end method

.method public varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method protected doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lmiui/util/Log$Facade;->Ib:Lcom/miui/internal/log/Logger;

    if-nez v0, :cond_0

    .line 607
    const-string v0, "LogcatFacade"

    const-string v1, "mLogger is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    return-void

    .line 609
    :cond_0
    if-nez p5, :cond_1

    .line 610
    iget-object v0, p0, Lmiui/util/Log$Facade;->Ib:Lcom/miui/internal/log/Logger;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/log/Logger;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 612
    :cond_1
    iget-object v0, p0, Lmiui/util/Log$Facade;->Ib:Lcom/miui/internal/log/Logger;

    invoke-virtual {v0, p1, p2, p5}, Lcom/miui/internal/log/Logger;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;)V

    .line 613
    invoke-interface {p5}, Lcom/miui/internal/log/message/Message;->recycle()V

    goto :goto_0
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 538
    sget-object v0, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 549
    sget-object v0, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    return-void
.end method

.method public varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 569
    sget-object v0, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    return-void
.end method

.method public varargs fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 591
    sget-object v0, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 474
    sget-object v0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 486
    return-void
.end method

.method public varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 496
    sget-object v0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 410
    sget-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    return-void
.end method

.method public varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 517
    sget-object v0, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 518
    return-void
.end method

.method public varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    return-void
.end method
