.class public Lmiui/widget/DateTimePicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DateTimePicker$1;,
        Lmiui/widget/DateTimePicker$a;,
        Lmiui/widget/DateTimePicker$LunarFormatter;,
        Lmiui/widget/DateTimePicker$DayFormatter;,
        Lmiui/widget/DateTimePicker$SavedState;,
        Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    }
.end annotation


# static fields
.field private static final PB:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static PJ:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final Po:I = 0x1

.field private static final Pp:I = 0x7

.field private static final Pq:I = 0x6

.field private static final Pr:I = 0x2

.field private static final Px:Lmiui/widget/DateTimePicker$DayFormatter;


# instance fields
.field private PC:I

.field private PD:I

.field PI:[Ljava/lang/String;

.field private Pe:Lmiui/date/Calendar;

.field private Pf:Lmiui/date/Calendar;

.field private Pi:Z

.field private Ps:Lmiui/widget/NumberPicker;

.field private Pt:Lmiui/widget/NumberPicker;

.field private Pu:Lmiui/widget/NumberPicker;

.field private Pv:[Ljava/lang/String;

.field private Pw:Lmiui/widget/DateTimePicker$DayFormatter;

.field private Py:Lmiui/widget/DateTimePicker$DayFormatter;

.field private Pz:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

.field private wb:Lmiui/date/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lmiui/widget/DateTimePicker$DayFormatter;

    invoke-direct {v0}, Lmiui/widget/DateTimePicker$DayFormatter;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->Px:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 49
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->PB:Ljava/lang/ThreadLocal;

    .line 61
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->PJ:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/miui/internal/R$attr;->dateTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput v3, p0, Lmiui/widget/DateTimePicker;->PC:I

    .line 56
    iput-object v2, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    .line 57
    iput-object v2, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    .line 59
    iput-object v2, p0, Lmiui/widget/DateTimePicker;->PI:[Ljava/lang/String;

    .line 63
    iput-boolean v4, p0, Lmiui/widget/DateTimePicker;->Pi:Z

    .line 76
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 78
    sget v1, Lcom/miui/internal/R$layout;->datetime_picker:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    new-instance v1, Lmiui/widget/DateTimePicker$a;

    invoke-direct {v1, p0, v2}, Lmiui/widget/DateTimePicker$a;-><init>(Lmiui/widget/DateTimePicker;Lmiui/widget/DateTimePicker$1;)V

    .line 82
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    .line 83
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-direct {p0, v0, v3}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Z)V

    .line 85
    sget-object v0, Lmiui/widget/DateTimePicker;->PB:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 86
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 88
    sget-object v2, Lmiui/widget/DateTimePicker;->PB:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 90
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 92
    sget v0, Lcom/miui/internal/R$id;->day:I

    invoke-virtual {p0, v0}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    .line 93
    sget v0, Lcom/miui/internal/R$id;->hour:I

    invoke-virtual {p0, v0}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    .line 94
    sget v0, Lcom/miui/internal/R$id;->minute:I

    invoke-virtual {p0, v0}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    .line 95
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 96
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setMaxFlingSpeedFactor(F)V

    .line 97
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 98
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 99
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 100
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 101
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    sget-object v1, Lmiui/widget/NumberPicker;->Uc:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 102
    sget-object v0, Lcom/miui/internal/R$styleable;->DateTimePicker:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    sget v1, Lcom/miui/internal/R$styleable;->DateTimePicker_lunarCalendar:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/DateTimePicker;->Pi:Z

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->dZ()V

    .line 108
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ea()V

    .line 109
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ed()V

    .line 110
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ec()V

    .line 111
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->eb()V

    .line 112
    return-void
.end method

.method private a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/16 v5, 0x14

    const/16 v4, 0x12

    const-wide/16 v6, 0x3c

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p1}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 220
    invoke-virtual {p2}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/date/Calendar;

    .line 221
    invoke-virtual {v0, v4, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 222
    invoke-virtual {v0, v5, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 223
    invoke-virtual {v0, v8, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 224
    const/16 v2, 0x16

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 225
    invoke-virtual {v1, v4, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 226
    invoke-virtual {v1, v5, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 227
    invoke-virtual {v1, v8, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 228
    const/16 v2, 0x16

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 229
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    div-long/2addr v0, v6

    div-long/2addr v0, v6

    const-wide/16 v4, 0x18

    div-long/2addr v0, v4

    sub-long v0, v2, v0

    long-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lmiui/widget/DateTimePicker;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lmiui/widget/DateTimePicker;->PD:I

    return p1
.end method

.method static synthetic a(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method private a(Lmiui/date/Calendar;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 115
    const/16 v0, 0x16

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 116
    const/16 v0, 0x15

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 117
    invoke-virtual {p1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/DateTimePicker;->PC:I

    rem-int/2addr v0, v1

    .line 118
    if-eqz v0, :cond_0

    .line 119
    if-eqz p2, :cond_1

    .line 120
    iget v1, p0, Lmiui/widget/DateTimePicker;->PC:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    neg-int v0, v0

    invoke-virtual {p1, v2, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_0
.end method

.method static synthetic b(Lmiui/widget/DateTimePicker;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lmiui/widget/DateTimePicker;->PD:I

    return v0
.end method

.method private b(Lmiui/widget/NumberPicker;II)V
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    array-length v0, v0

    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method

.method static synthetic c(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    return-object v0
.end method

.method static synthetic d(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method private dZ()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 128
    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 130
    :goto_0
    sget v4, Lcom/miui/internal/R$string;->fmt_time_12hour_minute:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    const-string v4, "h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 134
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez v3, :cond_4

    if-nez v0, :cond_4

    .line 135
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 136
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 140
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 129
    goto :goto_0

    :cond_4
    move v1, v2

    .line 134
    goto :goto_1
.end method

.method static synthetic e(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method private ea()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 146
    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 147
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 149
    :cond_1
    return-void
.end method

.method private eb()V
    .locals 8

    .prologue
    const/16 v7, 0x3c

    const/16 v6, 0x14

    const/4 v1, 0x1

    const/16 v5, 0x12

    const/4 v2, 0x0

    .line 152
    .line 153
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    if-eqz v0, :cond_5

    .line 154
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-direct {p0, v0, v3}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v3, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 156
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v0, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 157
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 158
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    iget v4, p0, Lmiui/widget/DateTimePicker;->PC:I

    div-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 159
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v1

    .line 163
    :goto_0
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-direct {p0, v3, v4}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-virtual {v3, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 166
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v0, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 167
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    iget v4, p0, Lmiui/widget/DateTimePicker;->PC:I

    div-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 168
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v1

    .line 172
    :cond_0
    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    iget v3, p0, Lmiui/widget/DateTimePicker;->PC:I

    div-int v3, v7, v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v0, v2, v3}, Lmiui/widget/DateTimePicker;->b(Lmiui/widget/NumberPicker;II)V

    .line 174
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 175
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    iget v3, p0, Lmiui/widget/DateTimePicker;->PC:I

    div-int v3, v7, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 176
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 178
    :cond_1
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 179
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pv:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pv:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_4

    .line 180
    :cond_2
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->Pv:[Ljava/lang/String;

    .line 181
    :goto_1
    if-ge v2, v0, :cond_3

    .line 182
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pv:[Ljava/lang/String;

    sget-object v3, Lmiui/widget/NumberPicker;->Uc:Lmiui/widget/NumberPicker$Formatter;

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, p0, Lmiui/widget/DateTimePicker;->PC:I

    mul-int/2addr v4, v5

    invoke-interface {v3, v4}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    :cond_3
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pv:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 187
    :cond_4
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-virtual {v0, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/DateTimePicker;->PC:I

    div-int/2addr v0, v1

    .line 188
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 189
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method private ec()V
    .locals 6

    .prologue
    const/16 v5, 0x12

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    .line 193
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-direct {p0, v0, v3}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 196
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 197
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v1

    .line 201
    :goto_0
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-direct {p0, v3, v4}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v3

    if-nez v3, :cond_0

    .line 203
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 204
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 205
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v1

    .line 209
    :cond_0
    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 211
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 212
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 214
    :cond_1
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 215
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pt:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 216
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private ed()V
    .locals 11

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 233
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    if-nez v0, :cond_6

    const v0, 0x7fffffff

    .line 234
    :goto_0
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    if-nez v1, :cond_7

    const v1, 0x7fffffff

    .line 235
    :goto_1
    if-gt v0, v6, :cond_8

    if-gt v1, v6, :cond_8

    .line 236
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-direct {p0, v1, v3}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    .line 237
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v5, v1}, Lmiui/widget/DateTimePicker;->b(Lmiui/widget/NumberPicker;II)V

    .line 238
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v5}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 239
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 240
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 241
    iput v0, p0, Lmiui/widget/DateTimePicker;->PD:I

    .line 242
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 261
    :cond_0
    :goto_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 262
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->PI:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->PI:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_2

    .line 263
    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->PI:[Ljava/lang/String;

    .line 266
    :cond_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v3

    .line 267
    sget-object v0, Lmiui/widget/DateTimePicker;->PB:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 268
    if-nez v0, :cond_3

    .line 269
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 270
    sget-object v1, Lmiui/widget/DateTimePicker;->PB:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 272
    :cond_3
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 273
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->PI:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    move v1, v2

    .line 275
    :goto_3
    const/4 v4, 0x3

    if-gt v1, v4, :cond_4

    .line 276
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 277
    add-int v4, v3, v1

    rem-int/lit8 v4, v4, 0x7

    .line 278
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->PI:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_b

    .line 284
    :cond_4
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    move v1, v2

    .line 285
    :goto_4
    const/4 v4, 0x3

    if-gt v1, v4, :cond_5

    .line 286
    const/16 v4, 0xc

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 287
    sub-int v4, v3, v1

    add-int/lit8 v4, v4, 0x7

    rem-int/lit8 v4, v4, 0x7

    .line 288
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->PI:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_c

    .line 294
    :cond_5
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->PI:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 295
    return-void

    .line 233
    :cond_6
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v0

    goto/16 :goto_0

    .line 234
    :cond_7
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-direct {p0, v1, v3}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    goto/16 :goto_1

    .line 244
    :cond_8
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    const/4 v4, 0x6

    invoke-direct {p0, v3, v5, v4}, Lmiui/widget/DateTimePicker;->b(Lmiui/widget/NumberPicker;II)V

    .line 245
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v5}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 246
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 247
    if-gt v0, v6, :cond_9

    .line 248
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 249
    iput v0, p0, Lmiui/widget/DateTimePicker;->PD:I

    .line 250
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v5}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 252
    :cond_9
    if-gt v1, v6, :cond_a

    .line 253
    rsub-int/lit8 v3, v1, 0x6

    iput v3, p0, Lmiui/widget/DateTimePicker;->PD:I

    .line 254
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    iget v4, p0, Lmiui/widget/DateTimePicker;->PD:I

    invoke-virtual {v3, v4}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 255
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v5}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 257
    :cond_a
    if-le v0, v6, :cond_0

    if-le v1, v6, :cond_0

    .line 258
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Ps:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_2

    .line 281
    :cond_b
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->PI:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 291
    :cond_c
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->PI:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method static synthetic ee()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lmiui/widget/DateTimePicker;->PJ:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic f(Lmiui/widget/DateTimePicker;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lmiui/widget/DateTimePicker;->PC:I

    return v0
.end method

.method private formatDay(III)Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    sget-object v0, Lmiui/widget/DateTimePicker;->Px:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 522
    iget-boolean v1, p0, Lmiui/widget/DateTimePicker;->Pi:Z

    if-eqz v1, :cond_1

    .line 523
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Py:Lmiui/widget/DateTimePicker$DayFormatter;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lmiui/widget/DateTimePicker$LunarFormatter;

    invoke-direct {v0}, Lmiui/widget/DateTimePicker$LunarFormatter;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->Py:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 526
    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Py:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 528
    :cond_1
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pw:Lmiui/widget/DateTimePicker$DayFormatter;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pw:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 529
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lmiui/widget/DateTimePicker$DayFormatter;->formatDay(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lmiui/widget/DateTimePicker;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ea()V

    return-void
.end method

.method static synthetic h(Lmiui/widget/DateTimePicker;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ed()V

    return-void
.end method

.method static synthetic i(Lmiui/widget/DateTimePicker;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ec()V

    return-void
.end method

.method static synthetic j(Lmiui/widget/DateTimePicker;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->eb()V

    return-void
.end method

.method static synthetic k(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pz:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    return-object v0
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 403
    return-void
.end method

.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 412
    check-cast p1, Lmiui/widget/DateTimePicker$SavedState;

    .line 413
    invoke-virtual {p1}, Lmiui/widget/DateTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 414
    invoke-virtual {p1}, Lmiui/widget/DateTimePicker$SavedState;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DateTimePicker;->update(J)V

    .line 415
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 407
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 408
    new-instance v1, Lmiui/widget/DateTimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lmiui/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;J)V

    return-object v1
.end method

.method public setDayFormatter(Lmiui/widget/DateTimePicker$DayFormatter;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lmiui/widget/DateTimePicker;->Pw:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 508
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ed()V

    .line 509
    return-void
.end method

.method public setLunarMode(Z)V
    .locals 0

    .prologue
    .line 516
    iput-boolean p1, p0, Lmiui/widget/DateTimePicker;->Pi:Z

    .line 517
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ed()V

    .line 518
    return-void
.end method

.method public setMaxDateTime(J)V
    .locals 5

    .prologue
    .line 381
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    .line 391
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ea()V

    .line 392
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ed()V

    .line 393
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ec()V

    .line 394
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->eb()V

    .line 395
    return-void

    .line 384
    :cond_1
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    .line 385
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 386
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Z)V

    .line 387
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 388
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    goto :goto_0
.end method

.method public setMinDateTime(J)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 357
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    .line 370
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ea()V

    .line 371
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ed()V

    .line 372
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ec()V

    .line 373
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->eb()V

    .line 374
    return-void

    .line 360
    :cond_1
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    .line 361
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 362
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    :cond_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 365
    :cond_3
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-direct {p0, v0, v2}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Z)V

    .line 366
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 367
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->Pe:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    goto :goto_0
.end method

.method public setMinuteInterval(I)V
    .locals 2

    .prologue
    .line 319
    iget v0, p0, Lmiui/widget/DateTimePicker;->PC:I

    if-ne v0, p1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 323
    :cond_0
    iput p1, p0, Lmiui/widget/DateTimePicker;->PC:I

    .line 324
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Z)V

    .line 326
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ea()V

    .line 327
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->eb()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lmiui/widget/DateTimePicker;->Pz:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    .line 311
    return-void
.end method

.method public update(J)V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 337
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wb:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Z)V

    .line 338
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ea()V

    .line 339
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ed()V

    .line 340
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ec()V

    .line 341
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->eb()V

    .line 342
    return-void
.end method
