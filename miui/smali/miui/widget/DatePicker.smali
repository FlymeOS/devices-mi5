.class public Lmiui/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DatePicker$SavedState;,
        Lmiui/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final OK:I = 0x76c

.field private static final OL:I = 0x834

.field private static final ON:Z = false

.field private static final OO:Z = true

.field private static final OP:Z = true

.field private static final OX:[Ljava/lang/String;

.field private static final OY:[Ljava/lang/String;

.field private static final OZ:[Ljava/lang/String;

.field private static final Pa:Ljava/lang/String;


# instance fields
.field private final OQ:Landroid/widget/LinearLayout;

.field private final OR:Lmiui/widget/NumberPicker;

.field private final OS:Lmiui/widget/NumberPicker;

.field private final OT:Lmiui/widget/NumberPicker;

.field private OU:Ljava/util/Locale;

.field private OV:[Ljava/lang/String;

.field private OW:[C

.field private final Pb:Ljava/text/DateFormat;

.field private Pc:I

.field private Pd:Lmiui/date/Calendar;

.field private Pe:Lmiui/date/Calendar;

.field private Pf:Lmiui/date/Calendar;

.field private Pg:Lmiui/date/Calendar;

.field private Ph:Z

.field private Pi:Z

.field private wd:Lmiui/widget/DatePicker$OnDateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    .line 74
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/widget/DatePicker;->OX:[Ljava/lang/String;

    .line 75
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/widget/DatePicker;->OY:[Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lmiui/widget/DatePicker;->OY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/widget/DatePicker;->OY:[Ljava/lang/String;

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/miui/internal/R$string;->chinese_month:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lmiui/widget/DatePicker;->OY:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmiui/widget/DatePicker;->OZ:[Ljava/lang/String;

    .line 83
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lmiui/widget/DatePicker;->Pa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/miui/internal/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/widget/DatePicker;->Pb:Ljava/text/DateFormat;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DatePicker;->Ph:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    .line 128
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    .line 129
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    .line 130
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    .line 131
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    .line 133
    sget-object v0, Lcom/miui/internal/R$styleable;->DatePicker:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    sget v1, Lcom/miui/internal/R$styleable;->DatePicker_spinnersShown:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 137
    sget v1, Lcom/miui/internal/R$styleable;->DatePicker_startYear:I

    const/16 v3, 0x76c

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 139
    sget v3, Lcom/miui/internal/R$styleable;->DatePicker_endYear:I

    const/16 v4, 0x834

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 140
    sget v3, Lcom/miui/internal/R$styleable;->DatePicker_minDate:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    sget v4, Lcom/miui/internal/R$styleable;->DatePicker_maxDate:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 142
    sget v4, Lcom/miui/internal/R$layout;->date_picker:I

    .line 143
    sget v5, Lcom/miui/internal/R$styleable;->DatePicker_lunarCalendar:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/widget/DatePicker;->Pi:Z

    .line 144
    sget v5, Lcom/miui/internal/R$styleable;->DatePicker_showYear:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 145
    sget v6, Lcom/miui/internal/R$styleable;->DatePicker_showMonth:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 146
    sget v7, Lcom/miui/internal/R$styleable;->DatePicker_showDay:I

    const/4 v10, 0x1

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/DatePicker;->b(Ljava/util/Locale;)V

    .line 152
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 154
    const/4 v10, 0x1

    invoke-virtual {v0, v4, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    new-instance v4, Lmiui/widget/DatePicker$1;

    invoke-direct {v4, p0}, Lmiui/widget/DatePicker$1;-><init>(Lmiui/widget/DatePicker;)V

    .line 179
    sget v0, Lcom/miui/internal/R$id;->pickers:I

    invoke-virtual {p0, v0}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiui/widget/DatePicker;->OQ:Landroid/widget/LinearLayout;

    .line 182
    sget v0, Lcom/miui/internal/R$id;->day:I

    invoke-virtual {p0, v0}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    .line 183
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    const-wide/16 v10, 0x64

    invoke-virtual {v0, v10, v11}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 184
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 185
    if-nez v7, :cond_0

    .line 186
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 190
    :cond_0
    sget v0, Lcom/miui/internal/R$id;->month:I

    invoke-virtual {p0, v0}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    .line 191
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 192
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    iget v7, p0, Lmiui/widget/DatePicker;->Pc:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 193
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    iget-object v7, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    invoke-virtual {v0, v7}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    const-wide/16 v10, 0xc8

    invoke-virtual {v0, v10, v11}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 195
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 196
    if-nez v6, :cond_1

    .line 197
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 201
    :cond_1
    sget v0, Lcom/miui/internal/R$id;->year:I

    invoke-virtual {p0, v0}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    .line 202
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 203
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 204
    if-nez v5, :cond_2

    .line 205
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 208
    :cond_2
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dU()V

    .line 212
    if-nez v2, :cond_6

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/DatePicker;->setSpinnersShown(Z)V

    .line 219
    :goto_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 220
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 221
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    invoke-direct {p0, v3, v0}, Lmiui/widget/DatePicker;->a(Ljava/lang/String;Lmiui/date/Calendar;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    .line 227
    :cond_3
    :goto_1
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DatePicker;->setMinDate(J)V

    .line 230
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 231
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 232
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    invoke-direct {p0, v9, v0}, Lmiui/widget/DatePicker;->a(Ljava/lang/String;Lmiui/date/Calendar;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 233
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, v8

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    .line 238
    :cond_4
    :goto_2
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DatePicker;->setMaxDate(J)V

    .line 241
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 242
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    .line 246
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dW()V

    .line 249
    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 252
    :cond_5
    return-void

    .line 215
    :cond_6
    invoke-virtual {p0, v2}, Lmiui/widget/DatePicker;->setSpinnersShown(Z)V

    goto/16 :goto_0

    .line 225
    :cond_7
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    goto :goto_1

    .line 236
    :cond_8
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, v8

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    goto :goto_2
.end method

.method static synthetic a(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    return-object v0
.end method

.method static synthetic a(Lmiui/widget/DatePicker;III)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->i(III)V

    return-void
.end method

.method private a(Lmiui/widget/NumberPicker;II)V
    .locals 2

    .prologue
    .line 716
    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_0

    .line 717
    const/4 v0, 0x5

    move v1, v0

    .line 721
    :goto_0
    sget v0, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p1, v0}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 722
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 723
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x6

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lmiui/date/Calendar;)Z
    .locals 3

    .prologue
    .line 574
    :try_start_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pb:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    const/4 v0, 0x1

    .line 578
    :goto_0
    return v0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    sget-object v0, Lmiui/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MM/dd/yyyy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    return-object v0
.end method

.method private b(Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lmiui/widget/DatePicker;->OU:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    iput-object p1, p0, Lmiui/widget/DatePicker;->OU:Ljava/util/Locale;

    .line 446
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/DatePicker;->Pc:I

    .line 447
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dV()V

    .line 448
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dU()V

    goto :goto_0
.end method

.method static synthetic c(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic d(Lmiui/widget/DatePicker;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    return v0
.end method

.method private dU()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    sget-object v1, Lmiui/widget/NumberPicker;->Uc:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 259
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    new-instance v1, Lmiui/widget/NumberPicker$e;

    invoke-direct {v1}, Lmiui/widget/NumberPicker$e;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    goto :goto_0
.end method

.method private dV()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 452
    iget-boolean v1, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v1, :cond_2

    .line 453
    iget-object v1, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v1

    .line 454
    if-gez v1, :cond_1

    .line 455
    sget-object v0, Lmiui/widget/DatePicker;->OY:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    sget-object v2, Lmiui/widget/DatePicker;->OZ:[Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    .line 458
    sget-object v2, Lmiui/widget/DatePicker;->OY:[Ljava/lang/String;

    iget-object v3, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    sget-object v0, Lmiui/widget/DatePicker;->OY:[Ljava/lang/String;

    iget-object v2, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lmiui/widget/DatePicker;->OY:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iget-object v0, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/widget/DatePicker;->Pa:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    .line 464
    :cond_2
    const-string v1, "en"

    iget-object v2, p0, Lmiui/widget/DatePicker;->OU:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 465
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    goto :goto_0

    .line 467
    :cond_3
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    .line 468
    :goto_1
    iget-object v1, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 469
    iget-object v1, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    sget-object v2, Lmiui/widget/NumberPicker;->Uc:Lmiui/widget/NumberPicker$Formatter;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private dW()V
    .locals 5

    .prologue
    .line 481
    iget-object v0, p0, Lmiui/widget/DatePicker;->OQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 483
    iget-object v0, p0, Lmiui/widget/DatePicker;->OW:[C

    if-nez v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 488
    :goto_0
    array-length v2, v0

    .line 489
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 490
    aget-char v3, v0, v1

    sparse-switch v3, :sswitch_data_0

    .line 504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 486
    :cond_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->OW:[C

    goto :goto_0

    .line 492
    :sswitch_0
    iget-object v3, p0, Lmiui/widget/DatePicker;->OQ:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    iget-object v3, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v1}, Lmiui/widget/DatePicker;->a(Lmiui/widget/NumberPicker;II)V

    .line 489
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 496
    :sswitch_1
    iget-object v3, p0, Lmiui/widget/DatePicker;->OQ:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    iget-object v3, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v1}, Lmiui/widget/DatePicker;->a(Lmiui/widget/NumberPicker;II)V

    goto :goto_2

    .line 500
    :sswitch_2
    iget-object v3, p0, Lmiui/widget/DatePicker;->OQ:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-object v3, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v1}, Lmiui/widget/DatePicker;->a(Lmiui/widget/NumberPicker;II)V

    goto :goto_2

    .line 507
    :cond_1
    return-void

    .line 490
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private dX()V
    .locals 9

    .prologue
    const/4 v4, 0x5

    const/4 v8, 0x0

    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 598
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_4

    .line 599
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v8}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v8}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v8}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 607
    :goto_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v8}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 609
    iget-object v2, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v0

    :goto_1
    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 611
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 612
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v8}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 614
    iget-object v2, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    if-ltz v0, :cond_6

    const/16 v0, 0xc

    :goto_2
    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 615
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 618
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    .line 619
    :goto_3
    iget-object v2, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v2, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v6, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 620
    iget-object v6, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    iget-boolean v2, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v2, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    :goto_4
    invoke-virtual {v6, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 621
    iget-object v2, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v5}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 623
    iget-boolean v2, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v2, :cond_a

    move v2, v3

    .line 624
    :goto_5
    iget-object v6, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v6, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v7, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 625
    iget-object v6, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    iget-boolean v2, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    :goto_6
    invoke-virtual {v6, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 627
    iget-object v2, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v5}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 631
    :cond_0
    iget-object v2, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v2, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v6, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 632
    iget-object v2, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    :goto_7
    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 633
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 634
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v8}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 636
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_d

    move v0, v3

    .line 637
    :goto_8
    iget-object v2, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v2, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v6, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 638
    iget-object v2, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    :goto_9
    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 640
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 646
    :cond_1
    iget-object v0, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    iget-object v2, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v6, p0, Lmiui/widget/DatePicker;->OV:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v0, v2, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 648
    iget-object v2, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 649
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_2

    .line 650
    sget-object v0, Lmiui/widget/DatePicker;->OX:[Ljava/lang/String;

    iget-object v2, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v6, Lmiui/widget/DatePicker;->OX:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v0, v2, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 651
    iget-object v2, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 655
    :cond_2
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 656
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 657
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 660
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    .line 661
    if-ltz v0, :cond_f

    iget-object v2, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v2, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    if-le v2, v0, :cond_f

    :cond_3
    move v0, v1

    .line 662
    :goto_a
    iget-object v2, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v5, :cond_10

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    :goto_b
    invoke-virtual {v2, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 663
    iget-object v1, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    iget-boolean v2, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v2, :cond_12

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_c
    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 665
    iget-object v1, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    :goto_d
    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 667
    return-void

    .line 603
    :cond_4
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v6, Lcom/miui/internal/R$string;->date_picker_label_day:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v6, Lcom/miui/internal/R$string;->date_picker_label_month:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v6, Lcom/miui/internal/R$string;->date_picker_label_year:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 609
    :cond_5
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v0

    goto/16 :goto_1

    .line 614
    :cond_6
    const/16 v0, 0xb

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0xb

    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 618
    goto/16 :goto_3

    .line 620
    :cond_9
    iget-object v2, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v2, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    goto/16 :goto_4

    :cond_a
    move v2, v4

    .line 623
    goto/16 :goto_5

    .line 625
    :cond_b
    iget-object v2, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v2, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    goto/16 :goto_6

    .line 632
    :cond_c
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v0, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    goto/16 :goto_7

    :cond_d
    move v0, v4

    .line 636
    goto/16 :goto_8

    .line 638
    :cond_e
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    goto/16 :goto_9

    :cond_f
    move v0, v5

    .line 661
    goto/16 :goto_a

    .line 662
    :cond_10
    iget-object v5, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v5, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    goto/16 :goto_b

    .line 663
    :cond_11
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    goto/16 :goto_c

    :cond_12
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v0, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    goto/16 :goto_c

    .line 665
    :cond_13
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    goto/16 :goto_d
.end method

.method private dY()V
    .locals 6

    .prologue
    .line 701
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 702
    iget-object v0, p0, Lmiui/widget/DatePicker;->wd:Lmiui/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lmiui/widget/DatePicker;->wd:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->Pi:Z

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lmiui/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lmiui/widget/DatePicker;IIIZ)V

    .line 705
    :cond_0
    return-void
.end method

.method static synthetic e(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic f(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic g(Lmiui/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dV()V

    return-void
.end method

.method static synthetic h(Lmiui/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dX()V

    return-void
.end method

.method private h(III)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 583
    iget-object v1, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(III)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 589
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    .line 590
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->before(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->after(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    goto :goto_0
.end method

.method static synthetic i(Lmiui/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dY()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 350
    const/4 v0, 0x1

    return v0
.end method

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
    .line 528
    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 529
    return-void
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 687
    iget-object v1, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 680
    iget-object v1, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lmiui/widget/DatePicker;->OQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 673
    iget-object v1, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->i(III)V

    .line 562
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dX()V

    .line 563
    iput-object p4, p0, Lmiui/widget/DatePicker;->wd:Lmiui/widget/DatePicker$OnDateChangedListener;

    .line 564
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Ph:Z

    return v0
.end method

.method public isLunarMode()Z
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 377
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lmiui/widget/DatePicker;->b(Ljava/util/Locale;)V

    .line 378
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 365
    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 371
    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 358
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x380

    invoke-static {v0, v1, v2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 542
    check-cast p1, Lmiui/widget/DatePicker$SavedState;

    .line 543
    invoke-virtual {p1}, Lmiui/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 544
    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->a(Lmiui/widget/DatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->b(Lmiui/widget/DatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->c(Lmiui/widget/DatePicker$SavedState;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/DatePicker;->i(III)V

    .line 545
    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->d(Lmiui/widget/DatePicker$SavedState;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    .line 546
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dX()V

    .line 547
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 533
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 534
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    .line 535
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    .line 536
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    .line 537
    new-instance v0, Lmiui/widget/DatePicker$SavedState;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->Pi:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZLmiui/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setDateFormatOrder([C)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lmiui/widget/DatePicker;->OW:[C

    .line 733
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dW()V

    .line 734
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Ph:Z

    if-ne v0, p1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 339
    iput-boolean p1, p0, Lmiui/widget/DatePicker;->Ph:Z

    goto :goto_0
.end method

.method public setLunarMode(Z)V
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->Pi:Z

    if-eq p1, v0, :cond_0

    .line 404
    iput-boolean p1, p0, Lmiui/widget/DatePicker;->Pi:Z

    .line 405
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dV()V

    .line 406
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dX()V

    .line 408
    :cond_0
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 318
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 319
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 324
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->after(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pf:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 327
    :cond_1
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dX()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 284
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 285
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/DatePicker;->Pd:Lmiui/date/Calendar;

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 290
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->before(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lmiui/widget/DatePicker;->Pg:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->Pe:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 293
    :cond_1
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dX()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lmiui/widget/DatePicker;->OQ:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    return-void

    .line 395
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showDayPicker(Z)V
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lmiui/widget/DatePicker;->OR:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 432
    return-void

    .line 431
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showMonthPicker(Z)V
    .locals 2

    .prologue
    .line 423
    iget-object v1, p0, Lmiui/widget/DatePicker;->OS:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 424
    return-void

    .line 423
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showYearPicker(Z)V
    .locals 2

    .prologue
    .line 415
    iget-object v1, p0, Lmiui/widget/DatePicker;->OT:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 416
    return-void

    .line 415
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->h(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->i(III)V

    .line 521
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dX()V

    .line 522
    invoke-direct {p0}, Lmiui/widget/DatePicker;->dY()V

    goto :goto_0
.end method
