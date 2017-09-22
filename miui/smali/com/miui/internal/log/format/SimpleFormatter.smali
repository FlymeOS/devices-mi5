.class public Lcom/miui/internal/log/format/SimpleFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/log/format/Formatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/log/format/SimpleFormatter$a;,
        Lcom/miui/internal/log/format/SimpleFormatter$c;,
        Lcom/miui/internal/log/format/SimpleFormatter$b;
    }
.end annotation


# static fields
.field private static final gC:Ljava/lang/String; = " - "


# instance fields
.field private gv:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/miui/internal/log/format/SimpleFormatter$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/miui/internal/log/format/SimpleFormatter$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/log/format/SimpleFormatter$1;-><init>(Lcom/miui/internal/log/format/SimpleFormatter;)V

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter;->gv:Ljava/lang/ThreadLocal;

    .line 116
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2000

    .line 39
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter;->gv:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/format/SimpleFormatter$c;

    .line 40
    iget-object v1, v0, Lcom/miui/internal/log/format/SimpleFormatter$c;->gP:Ljava/lang/StringBuilder;

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 43
    iget-object v2, v0, Lcom/miui/internal/log/format/SimpleFormatter$c;->gO:Lcom/miui/internal/log/format/SimpleFormatter$a;

    invoke-virtual {v2, v1, p3, p4}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(Ljava/lang/StringBuilder;J)V

    .line 46
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Lcom/miui/internal/log/Level;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    if-nez p6, :cond_2

    .line 53
    invoke-interface {p7, v1}, Lcom/miui/internal/log/message/Message;->format(Ljava/lang/Appendable;)V

    .line 58
    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    if-eqz p8, :cond_0

    .line 60
    iget-object v0, v0, Lcom/miui/internal/log/format/SimpleFormatter$c;->gQ:Ljava/io/PrintWriter;

    invoke-virtual {p8, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 64
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 69
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_2
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 34
    const/4 v7, 0x0

    invoke-interface/range {p6 .. p6}, Lcom/miui/internal/log/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/miui/internal/log/format/SimpleFormatter;->a(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 29
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/miui/internal/log/format/SimpleFormatter;->a(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
