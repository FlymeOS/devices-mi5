.class public Lcom/miui/internal/app/AlertControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/AlertControllerImpl$a;
    }
.end annotation


# instance fields
.field private aT:Lmiui/app/ActionBar;

.field private cA:Landroid/view/View$OnClickListener;

.field private cB:Z

.field private cC:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

.field private cD:Landroid/view/Window$Callback;

.field private final cb:Ljava/lang/Runnable;

.field private final cd:I

.field private final ce:I

.field private final cf:I

.field private final cg:I

.field private final ch:I

.field private final ci:Landroid/view/Window;

.field private cj:Landroid/view/ViewGroup;

.field private ck:Landroid/widget/ListView;

.field private cl:Lmiui/widget/EditableListViewWrapper;

.field private cm:Landroid/widget/TextView;

.field private cn:Landroid/widget/TextView;

.field private co:Landroid/widget/Button;

.field private cp:Landroid/widget/Button;

.field private cq:Ljava/lang/CharSequence;

.field private cr:Landroid/os/Message;

.field private cs:Landroid/widget/Button;

.field private ct:Ljava/lang/CharSequence;

.field private cu:Landroid/os/Message;

.field private cv:Landroid/widget/Button;

.field private cw:Ljava/lang/CharSequence;

.field private cx:Landroid/os/Message;

.field private cy:Landroid/widget/ScrollView;

.field private cz:Landroid/content/DialogInterface;

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mCheckedItems:[Z

.field private mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIsChecked:Z

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mMessage:Ljava/lang/CharSequence;

.field private mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    .line 135
    new-instance v0, Lcom/miui/internal/app/AlertControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/AlertControllerImpl$1;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/view/View$OnClickListener;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    .line 297
    new-instance v0, Lcom/miui/internal/app/AlertControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/AlertControllerImpl$2;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cb:Ljava/lang/Runnable;

    .line 871
    new-instance v0, Lcom/miui/internal/app/AlertControllerImpl$6;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/AlertControllerImpl$6;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cC:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .line 884
    new-instance v0, Lcom/miui/internal/app/AlertControllerImpl$7;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/AlertControllerImpl$7;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/view/Window$Callback;

    .line 192
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Landroid/content/DialogInterface;

    .line 194
    iput-object p3, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:Landroid/view/Window;

    .line 195
    new-instance v0, Lcom/miui/internal/app/AlertControllerImpl$a;

    invoke-direct {v0, p2}, Lcom/miui/internal/app/AlertControllerImpl$a;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    .line 197
    const/4 v0, 0x0

    sget-object v1, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const v2, 0x101005d

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_layout:I

    sget v2, Lcom/miui/internal/R$layout;->alert_dialog:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->ch:I

    .line 203
    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_listLayout:I

    sget v2, Lcom/miui/internal/R$layout;->select_dialog:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cd:I

    .line 206
    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    sget v2, Lcom/miui/internal/R$layout;->select_dialog_multichoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->ce:I

    .line 209
    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    sget v2, Lmiui/R$layout;->select_dialog_singlechoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cf:I

    .line 212
    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_listItemLayout:I

    sget v2, Lcom/miui/internal/R$layout;->select_dialog_item:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cg:I

    .line 216
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 536
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 538
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 540
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 543
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->dialog_title_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 545
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->dialog_title_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 551
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 554
    :goto_0
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 557
    :cond_1
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 560
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 562
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 581
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v2

    .line 551
    goto :goto_0

    .line 564
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 565
    :goto_2
    if-eqz v0, :cond_7

    .line 566
    sget v0, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    .line 568
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 571
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 574
    :cond_5
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1

    :cond_6
    move v0, v3

    .line 564
    goto :goto_2

    .line 578
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 708
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 709
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    const v1, 0x102002b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 711
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 718
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 720
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->dialog_custom_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 723
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 725
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Z

    .line 727
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/miui/internal/R$dimen;->dialog_custom_horizontal_padding:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 730
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 733
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    .line 736
    :cond_2
    const v6, 0x102000d

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 737
    if-eqz v6, :cond_6

    instance-of v6, v6, Lmiui/widget/ProgressBar;

    if-nez v6, :cond_6

    .line 738
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 739
    iput-boolean v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Z

    .line 755
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v4

    .line 725
    goto :goto_0

    :cond_5
    move v2, v5

    .line 730
    goto :goto_1

    .line 740
    :cond_6
    sget v6, Lcom/miui/internal/R$id;->datePicker:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7

    sget v6, Lcom/miui/internal/R$id;->timePicker:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7

    sget v6, Lcom/miui/internal/R$id;->dateTimePicker:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 743
    :cond_7
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 744
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->v()V

    .line 745
    iput-boolean v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Z

    goto :goto_2

    .line 747
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v2, v1, v5, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 749
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    .line 753
    :cond_9
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    :goto_0
    return v0

    .line 224
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 225
    goto :goto_0

    .line 228
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 229
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 230
    :cond_2
    if-lez v2, :cond_3

    .line 231
    add-int/lit8 v2, v2, -0x1

    .line 232
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 233
    invoke-static {v3}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 238
    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;)Z
    .locals 2

    .prologue
    .line 861
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 863
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 864
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 865
    const/4 v0, 0x1

    .line 868
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->a(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 327
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;

    .line 328
    iget v2, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->id:I

    iget-object v3, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4, v2, v4, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget v0, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->icon:I

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 331
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cr:Landroid/os/Message;

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 584
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/ScrollView;

    .line 586
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 589
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v1, Lmiui/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/TextView;

    .line 590
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 601
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->dialog_message_without_title_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 603
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 610
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 611
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->u()V

    .line 613
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 614
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 620
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->v()V

    .line 624
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 626
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$drawable;->dialog_title_bg_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_0

    .line 638
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 630
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b(Landroid/widget/FrameLayout;)V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 768
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 769
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 770
    iget-boolean v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 771
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 775
    :goto_0
    return-void

    .line 773
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->b(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    return-object v0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 778
    .line 782
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    .line 783
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    if-eqz v0, :cond_c

    .line 784
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 786
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    move v4, v2

    move v5, v2

    .line 796
    :goto_0
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    .line 797
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 800
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 810
    :cond_0
    :goto_1
    const v0, 0x102001b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    .line 811
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 814
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 824
    :cond_1
    :goto_2
    if-eqz v5, :cond_b

    .line 825
    sget v0, Lcom/miui/internal/R$id;->buttonGroup:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 828
    if-nez v4, :cond_2

    const/4 v4, 0x2

    if-le v1, v4, :cond_5

    .line 830
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 831
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 834
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 835
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 836
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 837
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 840
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 841
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 842
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    :cond_4
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 845
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 846
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 847
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    :cond_5
    iget-boolean v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    .line 852
    :cond_6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 858
    :cond_7
    :goto_3
    return-void

    .line 788
    :cond_8
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;)Z

    move-result v0

    move v1, v3

    move v4, v0

    move v5, v3

    .line 792
    goto/16 :goto_0

    .line 802
    :cond_9
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;)Z

    move-result v4

    .line 806
    add-int/lit8 v1, v1, 0x1

    move v5, v3

    goto/16 :goto_1

    .line 816
    :cond_a
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;)Z

    move-result v4

    .line 820
    add-int/lit8 v1, v1, 0x1

    move v5, v3

    goto/16 :goto_2

    .line 856
    :cond_b
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :cond_c
    move v1, v2

    move v4, v2

    move v5, v2

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic h(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Lmiui/widget/EditableListViewWrapper;

    return-object v0
.end method

.method static synthetic j(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:Landroid/widget/Button;

    return-object v0
.end method

.method private s()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 255
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 257
    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 258
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 261
    sget v0, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    .line 263
    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 265
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v4}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 266
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v4}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 268
    sget v1, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContextView;

    .line 270
    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 271
    invoke-virtual {v1, v4}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 272
    invoke-virtual {v1, v4}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 276
    :cond_0
    const v0, 0x1020002

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 277
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->ch:I

    invoke-static {v1, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 279
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 280
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 283
    new-instance v1, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Landroid/content/DialogInterface;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->aT:Lmiui/app/ActionBar;

    .line 284
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->aT:Lmiui/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    .line 286
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, v4}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:Landroid/view/Window;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->ch:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 290
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 292
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:Landroid/view/Window;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method private setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 315
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cC:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 502
    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/view/ViewGroup;)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 509
    if-eqz v0, :cond_1

    .line 510
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->b(Landroid/view/ViewGroup;)V

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v1, Lmiui/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 516
    if-eqz v0, :cond_2

    .line 517
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/FrameLayout;)V

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->checkboxPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 523
    if-eqz v0, :cond_3

    .line 524
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->b(Landroid/widget/FrameLayout;)V

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 530
    if-eqz v0, :cond_4

    .line 531
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->c(Landroid/view/ViewGroup;)V

    .line 533
    :cond_4
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    .line 645
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 646
    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    .line 647
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->cancel:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 648
    if-eqz v0, :cond_0

    .line 649
    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/miui/internal/app/AlertControllerImpl$3;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->select:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 658
    if-eqz v0, :cond_1

    .line 659
    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:Landroid/widget/Button;

    .line 660
    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$4;

    invoke-direct {v2, p0, v0}, Lcom/miui/internal/app/AlertControllerImpl$4;-><init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 672
    new-instance v0, Lmiui/widget/EditableListViewWrapper;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    invoke-direct {v0, v2}, Lmiui/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Lmiui/widget/EditableListViewWrapper;

    .line 673
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 674
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Lmiui/widget/EditableListViewWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 675
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$5;

    invoke-direct {v2, p0, v0}, Lcom/miui/internal/app/AlertControllerImpl$5;-><init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 686
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    if-eqz v0, :cond_2

    .line 687
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 688
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Lmiui/widget/EditableListViewWrapper;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v0, v2}, Lmiui/widget/EditableListViewWrapper;->setItemChecked(IZ)V

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lmiui/R$string;->deselect_all:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 701
    :cond_3
    :goto_2
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    .line 702
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 703
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 705
    :cond_4
    return-void

    .line 691
    :cond_5
    sget v0, Lmiui/R$string;->select_all:I

    goto :goto_1

    .line 694
    :cond_6
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 697
    :cond_7
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method private v()V
    .locals 4

    .prologue
    .line 758
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->dialog_title_average_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 761
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 764
    :cond_0
    return-void
.end method


# virtual methods
.method createMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 323
    return-object v0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->aT:Lmiui/app/ActionBar;

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 464
    packed-switch p1, :pswitch_data_0

    .line 472
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 466
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/Button;

    goto :goto_0

    .line 468
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    goto :goto_0

    .line 470
    :pswitch_2
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCheckedItems()[Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    return-object v0
.end method

.method public getDialogInterface()Landroid/content/DialogInterface;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Landroid/content/DialogInterface;

    return-object v0
.end method

.method public getListItemLayout()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cg:I

    return v0
.end method

.method public getListLayout()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cd:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMultiChoiceItemLayout()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ce:I

    return v0
.end method

.method public getSingleChoiceItemLayout()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cf:I

    return v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 242
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 244
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->s()V

    .line 250
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:Landroid/view/Window;

    sget v1, Lcom/miui/internal/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    .line 251
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->t()V

    .line 252
    return-void
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Landroid/view/ViewGroup;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Landroid/content/DialogInterface;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 344
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public setActionItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 415
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    .line 416
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 417
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    .line 482
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 389
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 390
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 393
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :pswitch_0
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Ljava/lang/CharSequence;

    .line 396
    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cr:Landroid/os/Message;

    .line 412
    :goto_0
    return-void

    .line 400
    :pswitch_1
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Ljava/lang/CharSequence;

    .line 401
    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/os/Message;

    goto :goto_0

    .line 405
    :pswitch_2
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Ljava/lang/CharSequence;

    .line 406
    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/os/Message;

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    .line 385
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 386
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 0

    .prologue
    .line 485
    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    .line 486
    return-void
.end method

.method public setCheckedItems([Z)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    .line 449
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    .line 370
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 357
    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 359
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 352
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    .line 354
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:Landroid/widget/ListView;

    .line 425
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 373
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    .line 374
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 362
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    .line 363
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    .line 381
    return-void
.end method
