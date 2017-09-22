.class public Lmiui/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/TimePicker$SavedState;,
        Lmiui/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final OP:Z = true

.field private static final YZ:I = 0xc

.field private static final Za:Lmiui/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private OU:Ljava/util/Locale;

.field private Ph:Z

.field private Zb:Z

.field private final Zc:Lmiui/widget/NumberPicker;

.field private final Zd:Lmiui/widget/NumberPicker;

.field private final Ze:Lmiui/widget/NumberPicker;

.field private final Zf:Landroid/widget/Button;

.field private Zg:Lmiui/widget/TimePicker$OnTimeChangedListener;

.field private Zh:Lmiui/date/Calendar;

.field private wH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lmiui/widget/TimePicker$1;

    invoke-direct {v0}, Lmiui/widget/TimePicker$1;-><init>()V

    sput-object v0, Lmiui/widget/TimePicker;->Za:Lmiui/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput-boolean v5, p0, Lmiui/widget/TimePicker;->Ph:Z

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/TimePicker;->b(Ljava/util/Locale;)V

    .line 101
    sget v1, Lcom/miui/internal/R$layout;->time_picker:I

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 105
    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    sget v0, Lcom/miui/internal/R$id;->hour:I

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    .line 109
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    new-instance v1, Lmiui/widget/TimePicker$2;

    invoke-direct {v1, p0}, Lmiui/widget/TimePicker$2;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 121
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    sget v1, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 122
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 125
    sget v0, Lcom/miui/internal/R$id;->minute:I

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lmiui/widget/TimePicker;->Zd:Lmiui/widget/NumberPicker;

    .line 126
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zd:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 127
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zd:Lmiui/widget/NumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 128
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zd:Lmiui/widget/NumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 129
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zd:Lmiui/widget/NumberPicker;

    sget-object v1, Lmiui/widget/NumberPicker;->Uc:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 130
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zd:Lmiui/widget/NumberPicker;

    new-instance v1, Lmiui/widget/TimePicker$3;

    invoke-direct {v1, p0}, Lmiui/widget/TimePicker$3;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 135
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zd:Lmiui/widget/NumberPicker;

    sget v1, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 136
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 139
    sget v0, Lcom/miui/internal/R$id;->amPm:I

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    instance-of v0, v1, Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 141
    iput-object v7, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    move-object v0, v1

    .line 142
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiui/widget/TimePicker;->Zf:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zf:Landroid/widget/Button;

    new-instance v2, Lmiui/widget/TimePicker$4;

    invoke-direct {v2, p0}, Lmiui/widget/TimePicker$4;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :goto_0
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget v0, Lcom/miui/internal/R$id;->timePickerLayout:I

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 173
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 177
    :cond_0
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fj()V

    .line 178
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fk()V

    .line 180
    sget-object v0, Lmiui/widget/TimePicker;->Za:Lmiui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V

    .line 183
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zh:Lmiui/date/Calendar;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 184
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zh:Lmiui/date/Calendar;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 186
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {p0, v4}, Lmiui/widget/TimePicker;->setEnabled(Z)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 192
    invoke-virtual {p0, v5}, Lmiui/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 194
    :cond_2
    return-void

    .line 152
    :cond_3
    iput-object v7, p0, Lmiui/widget/TimePicker;->Zf:Landroid/widget/Button;

    move-object v0, v1

    .line 153
    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    .line 154
    iget-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 155
    iget-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 156
    iget-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    new-instance v2, Lmiui/widget/TimePicker$5;

    invoke-direct {v2, p0}, Lmiui/widget/TimePicker$5;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 165
    iget-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    sget v2, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 166
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lmiui/widget/TimePicker;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->Zb:Z

    return v0
.end method

.method static synthetic a(Lmiui/widget/TimePicker;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lmiui/widget/TimePicker;->Zb:Z

    return p1
.end method

.method private b(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lmiui/widget/TimePicker;->OU:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iput-object p1, p0, Lmiui/widget/TimePicker;->OU:Ljava/util/Locale;

    .line 241
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zh:Lmiui/date/Calendar;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/TimePicker;->Zh:Lmiui/date/Calendar;

    goto :goto_0
.end method

.method static synthetic b(Lmiui/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fk()V

    return-void
.end method

.method private c(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 484
    :cond_0
    return-void
.end method

.method static synthetic c(Lmiui/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fl()V

    return-void
.end method

.method private fi()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->fmt_time_12hour_pm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 198
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 199
    if-nez v1, :cond_0

    .line 201
    :goto_0
    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private fj()V
    .locals 2

    .prologue
    .line 441
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 443
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 444
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    sget-object v1, Lmiui/widget/NumberPicker;->Uc:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 450
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 447
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 448
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    goto :goto_0
.end method

.method private fk()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 453
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 469
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 470
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zf:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 460
    :cond_1
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->Zb:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 461
    :goto_1
    iget-object v2, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 462
    iget-object v2, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 463
    iget-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 460
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 465
    :cond_3
    iget-object v2, p0, Lmiui/widget/TimePicker;->Zf:Landroid/widget/Button;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zf:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private fl()V
    .locals 3

    .prologue
    .line 473
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 474
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zg:Lmiui/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zg:Lmiui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lmiui/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lmiui/widget/TimePicker;II)V

    .line 477
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    .line 322
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 324
    :cond_0
    iget-boolean v1, p0, Lmiui/widget/TimePicker;->Zb:Z

    if-eqz v1, :cond_1

    .line 325
    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zd:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->wH:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->Ph:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lmiui/widget/TimePicker;->b(Ljava/util/Locale;)V

    .line 229
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 431
    const-class v0, Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 437
    const-class v0, Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 417
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->wH:Z

    if-eqz v0, :cond_0

    .line 418
    const/16 v0, 0x2c

    .line 422
    :goto_0
    iget-object v1, p0, Lmiui/widget/TimePicker;->Zh:Lmiui/date/Calendar;

    const/16 v2, 0x12

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 423
    iget-object v1, p0, Lmiui/widget/TimePicker;->Zh:Lmiui/date/Calendar;

    const/16 v2, 0x14

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 424
    iget-object v1, p0, Lmiui/widget/TimePicker;->Zh:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-void

    .line 420
    :cond_0
    const/16 v0, 0x1c

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 302
    check-cast p1, Lmiui/widget/TimePicker$SavedState;

    .line 303
    invoke-virtual {p1}, Lmiui/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 304
    invoke-virtual {p1}, Lmiui/widget/TimePicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 305
    invoke-virtual {p1}, Lmiui/widget/TimePicker$SavedState;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 306
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 296
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 297
    new-instance v1, Lmiui/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lmiui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILmiui/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 336
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 341
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->Zb:Z

    .line 343
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 344
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 352
    :cond_2
    :goto_1
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fk()V

    .line 354
    :cond_3
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 355
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fl()V

    goto :goto_0

    .line 347
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->Zb:Z

    .line 348
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zd:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 398
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fl()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->Ph:Z

    if-ne v0, p1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zd:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zc:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lmiui/widget/TimePicker;->Ze:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 217
    :goto_1
    iput-boolean p1, p0, Lmiui/widget/TimePicker;->Ph:Z

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lmiui/widget/TimePicker;->Zf:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 364
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->wH:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->wH:Z

    .line 369
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 370
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fj()V

    .line 372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 373
    invoke-direct {p0}, Lmiui/widget/TimePicker;->fk()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lmiui/widget/TimePicker;->Zg:Lmiui/widget/TimePicker$OnTimeChangedListener;

    .line 315
    return-void
.end method
