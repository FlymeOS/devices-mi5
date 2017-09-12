.class Landroid/widget/CalendarViewLegacyDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$WeekView;,
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;,
        Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDayNamesLong:[Ljava/lang/String;

.field private mDayNamesShort:[Ljava/lang/String;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 131
    const/4 v6, 0x2

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 136
    const/16 v6, 0xc

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 141
    const/16 v6, 0x14

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 156
    const/4 v6, 0x7

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    .line 161
    const v6, 0x3d4ccccd    # 0.05f

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    .line 166
    const v6, 0x3eaa7efa    # 0.333f

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    .line 206
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 216
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 221
    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 226
    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    .line 236
    new-instance v6, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$1;)V

    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    .line 262
    sget-object v6, Lcom/android/internal/R$styleable;->CalendarView:[I

    invoke-virtual {p2, p3, v6, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 264
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 266
    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v7

    iget-object v7, v7, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 268
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, "minDate":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 270
    const-string v6, "01/01/1900"

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 272
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "maxDate":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v4, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 274
    const-string v6, "01/01/2100"

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 276
    :cond_1
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 277
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Max date cannot be before min date."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 279
    :cond_2
    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 281
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 283
    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 285
    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 287
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 289
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 290
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 293
    const/16 v6, 0xc

    const v7, 0x1030046

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 295
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    .line 297
    const/16 v6, 0xb

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 302
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v6}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 303
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v6, 0x1

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 305
    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 307
    const/4 v6, 0x1

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 309
    const/4 v6, 0x1

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    .line 311
    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I

    .line 314
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 316
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x109003b

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 317
    .local v1, "content":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v6, v1}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 319
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 320
    const v6, 0x1020315

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 321
    const v6, 0x1020314

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    .line 323
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 324
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpListView()V

    .line 325
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpAdapter()V

    .line 328
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 329
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 330
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    .line 337
    :goto_0
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v6}, Landroid/widget/CalendarView;->invalidate()V

    .line 338
    return-void

    .line 331
    :cond_3
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 332
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    .line 334
    :cond_4
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method static synthetic access$1002(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p0, "oldCalendar"    # Ljava/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 649
    if-nez p0, :cond_0

    .line 650
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 655
    :goto_0
    return-object v2

    .line 652
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 653
    .local v0, "currentTimeMillis":J
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 654
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 12
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 924
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 925
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 928
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 930
    .local v2, "endTimeMillis":J
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 932
    .local v4, "startTimeMillis":J
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    .line 934
    .local v0, "dayOffsetMillis":J
    sub-long v6, v2, v4

    add-long/2addr v6, v0

    const-wide/32 v8, 0x240c8400

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 9
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .prologue
    const/4 v8, 0x0

    .line 773
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 774
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time not between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 778
    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 779
    .local v1, "firstFullyVisiblePosition":I
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 780
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_2

    .line 781
    add-int/lit8 v1, v1, 0x1

    .line 783
    :cond_2
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 784
    .local v2, "lastFullyVisiblePosition":I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    if-le v4, v5, :cond_3

    .line 785
    add-int/lit8 v2, v2, -0x1

    .line 787
    :cond_3
    if-eqz p3, :cond_4

    .line 788
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 791
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    .line 795
    .local v3, "position":I
    if-lt v3, v1, :cond_5

    if-gt v3, v2, :cond_5

    if-eqz p4, :cond_9

    .line 797
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 798
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 800
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 803
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 804
    const/4 v3, 0x0

    .line 809
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 810
    if-eqz p2, :cond_8

    .line 811
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 822
    :cond_6
    :goto_1
    return-void

    .line 806
    :cond_7
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    goto :goto_0

    .line 814
    :cond_8
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 816
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v8}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_1

    .line 818
    :cond_9
    if-eqz p3, :cond_6

    .line 820
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_1
.end method

.method private invalidateAllWeekViews()V
    .locals 4

    .prologue
    .line 635
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 636
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 637
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 638
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private static isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "firstDate"    # Ljava/util/Calendar;
    .param p1, "secondDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 664
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 838
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 839
    .local v0, "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    if-nez v0, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v2, v7

    .line 848
    .local v2, "currScroll":J
    iget-wide v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_6

    .line 849
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 860
    :goto_1
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_7

    const/4 v6, 0x1

    .line 861
    .local v6, "offset":I
    :goto_2
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_8

    .line 862
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 867
    .restart local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_2
    :goto_3
    if-eqz v0, :cond_5

    .line 870
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_9

    .line 871
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    .line 878
    .local v4, "month":I
    :goto_4
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_a

    .line 879
    const/4 v5, 0x1

    .line 888
    .local v5, "monthDiff":I
    :goto_5
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-nez v7, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_5

    if-gez v5, :cond_5

    .line 889
    :cond_4
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object v1

    .line 890
    .local v1, "firstDay":Ljava/util/Calendar;
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_c

    .line 891
    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 895
    :goto_6
    invoke-direct {p0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 898
    .end local v1    # "firstDay":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "monthDiff":I
    :cond_5
    iput-wide v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    .line 899
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    iput v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    goto :goto_0

    .line 850
    .end local v6    # "offset":I
    :cond_6
    iget-wide v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 851
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    goto :goto_1

    .line 860
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 863
    .restart local v6    # "offset":I
    :cond_8
    if-eqz v6, :cond_2

    .line 864
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .restart local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    goto :goto_3

    .line 873
    :cond_9
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    .restart local v4    # "month":I
    goto :goto_4

    .line 880
    :cond_a
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_b

    const/16 v7, 0xb

    if-ne v4, v7, :cond_b

    .line 881
    const/4 v5, -0x1

    .restart local v5    # "monthDiff":I
    goto :goto_5

    .line 883
    .end local v5    # "monthDiff":I
    :cond_b
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    .restart local v5    # "monthDiff":I
    goto :goto_5

    .line 893
    .restart local v1    # "firstDay":Ljava/util/Calendar;
    :cond_c
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_6
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 829
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 830
    return-void
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 8
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 909
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 910
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    invoke-virtual {v1, v4}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setFocusMonth(I)V

    .line 911
    const/16 v0, 0x34

    .line 913
    .local v0, "flags":I
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 914
    .local v2, "millis":J
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    .line 915
    .local v7, "newMonthName":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 917
    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 674
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$1;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 686
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 690
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 691
    return-void
.end method

.method private setUpHeader()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 697
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    .line 698
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    .line 699
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .local v2, "i":I
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int v1, v4, v5

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 700
    const/4 v4, 0x7

    if-le v2, v4, :cond_0

    add-int/lit8 v0, v2, -0x7

    .line 701
    .local v0, "calendarDay":I
    :goto_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 703
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0xa

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "calendarDay":I
    :cond_0
    move v0, v2

    .line 700
    goto :goto_1

    .line 707
    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 708
    .local v3, "label":Landroid/widget/TextView;
    iget-boolean v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-eqz v4, :cond_3

    .line 709
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 713
    :goto_2
    const/4 v2, 0x1

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_5

    .line 714
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "label":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 715
    .restart local v3    # "label":Landroid/widget/TextView;
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 716
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 718
    :cond_2
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_4

    .line 719
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 721
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 713
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 711
    :cond_3
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 723
    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 726
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 727
    return-void
.end method

.method private setUpListView()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 735
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 736
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 737
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$2;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 750
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 751
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 752
    return-void
.end method

.method private updateDateTextSize()V
    .locals 4

    .prologue
    .line 624
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 626
    .local v0, "dateTextAppearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    .line 628
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 629
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 606
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 607
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 616
    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 618
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    .line 619
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    .line 620
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    .line 621
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 622
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    const/4 v0, 0x0

    .line 582
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(JZZ)V

    .line 583
    return-void
.end method

.method public setDate(JZZ)V
    .locals 3
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .prologue
    .line 587
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 588
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 478
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 479
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 480
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    .line 481
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 483
    :cond_0
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 566
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    .line 573
    :goto_0
    return-void

    .line 569
    :cond_0
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 570
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 571
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 572
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    goto :goto_0
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 374
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    if-eq v3, p1, :cond_1

    .line 375
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 376
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 377
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 378
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 379
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$200(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 377
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x0

    .line 525
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 526
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 531
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 532
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 533
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    goto :goto_0

    .line 540
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 493
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 501
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 502
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 506
    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 507
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    goto :goto_0

    .line 514
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .prologue
    .line 601
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 602
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 440
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 441
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    .line 442
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 446
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_1

    .line 447
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 448
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 449
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 450
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 451
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 449
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 355
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    if-eq v3, p1, :cond_1

    .line 356
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 357
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 358
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 359
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 360
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 358
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1
    .param p1, "showWeekNumber"    # Z

    .prologue
    .line 551
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 554
    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 555
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 556
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    goto :goto_0
.end method

.method public setShownWeekCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 342
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    if-eq v0, p1, :cond_0

    .line 343
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 344
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->invalidate()V

    .line 346
    :cond_0
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 393
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    if-eq v3, p1, :cond_1

    .line 394
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 395
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 396
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 397
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 398
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$300(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 465
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 466
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 467
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 469
    :cond_0
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 412
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    if-eq v0, p1, :cond_0

    .line 413
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 414
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 418
    :cond_0
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 427
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_0

    .line 428
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 429
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 431
    :cond_0
    return-void
.end method
