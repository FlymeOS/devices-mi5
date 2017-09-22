.class Lcom/miui/internal/log/format/SimpleFormatter$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/log/format/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final gE:I = 0x3e8

.field private static final gF:I = 0xea60

.field private static final gG:I = 0x6

.field private static final gH:I = 0x3


# instance fields
.field private gI:Ljava/lang/StringBuilder;

.field private gJ:Ljava/util/Calendar;

.field private gK:J

.field private gL:J

.field private gM:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gJ:Ljava/util/Calendar;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/log/format/SimpleFormatter$1;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/miui/internal/log/format/SimpleFormatter$a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    const/16 v1, 0x30

    const/16 v0, 0xa

    .line 169
    packed-switch p3, :pswitch_data_0

    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    :goto_0
    return-object p1

    .line 171
    :pswitch_0
    if-ge p2, v0, :cond_1

    .line 172
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    :cond_1
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 174
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :pswitch_1
    if-ge p2, v0, :cond_2

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(J)V
    .locals 7

    .prologue
    const/16 v5, 0x3a

    const/16 v4, 0x2d

    const/4 v3, 0x2

    .line 156
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gJ:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gJ:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gJ:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gJ:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gJ:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gJ:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gJ:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gJ:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 165
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;J)V
    .locals 10

    .prologue
    const/4 v8, 0x3

    const-wide/32 v6, 0xea60

    const-wide/16 v4, 0x3e8

    .line 129
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gK:J

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 130
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gL:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gL:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gL:J

    add-long/2addr v0, v6

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    .line 131
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(J)V

    .line 132
    div-long v0, p2, v6

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gL:J

    .line 133
    div-long v0, p2, v4

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gM:J

    .line 149
    :goto_0
    iput-wide p2, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gK:J

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 152
    return-void

    .line 135
    :cond_2
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gM:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gM:J

    add-long/2addr v0, v4

    cmp-long v0, p2, v0

    if-ltz v0, :cond_4

    .line 136
    :cond_3
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gL:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    .line 137
    div-int/lit16 v1, v0, 0x3e8

    .line 138
    mul-int/lit16 v2, v1, 0x3e8

    sub-int/2addr v0, v2

    .line 139
    iget-object v2, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 140
    iget-object v2, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v1, v3}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    iget-object v2, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v0, v8}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 142
    iget-wide v2, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gL:J

    mul-int/lit16 v0, v1, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gM:J

    goto :goto_0

    .line 144
    :cond_4
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gM:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    .line 145
    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$a;->gI:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0, v8}, Lcom/miui/internal/log/format/SimpleFormatter$a;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
