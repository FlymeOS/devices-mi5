.class public Lmiui/widget/MessageView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private uz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/MessageView;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 59
    sget-object v0, Lcom/miui/internal/R$styleable;->MessageView:[I

    invoke-virtual {p1, p2, v0, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    sget v1, Lcom/miui/internal/R$styleable;->MessageView_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    sget v2, Lcom/miui/internal/R$styleable;->MessageView_android_textColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 62
    sget v3, Lcom/miui/internal/R$styleable;->MessageView_closeBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/widget/MessageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/MessageView;->uz:Landroid/widget/TextView;

    .line 66
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    invoke-virtual {p0}, Lmiui/widget/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$dimen;->message_view_text_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 68
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 69
    iget-object v4, p0, Lmiui/widget/MessageView;->uz:Landroid/widget/TextView;

    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 70
    iget-object v4, p0, Lmiui/widget/MessageView;->uz:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lmiui/widget/MessageView;->uz:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 72
    iget-object v1, p0, Lmiui/widget/MessageView;->uz:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/widget/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/miui/internal/R$dimen;->message_view_text_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 74
    iget-object v1, p0, Lmiui/widget/MessageView;->uz:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lmiui/widget/MessageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    invoke-virtual {p0}, Lmiui/widget/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/miui/internal/R$dimen;->message_view_text_margin_right:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 79
    invoke-virtual {p0}, Lmiui/widget/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/miui/internal/R$dimen;->message_view_close_margin_right:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 80
    sget v2, Lcom/miui/internal/R$id;->close:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 81
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    new-instance v2, Lmiui/widget/MessageView$1;

    invoke-direct {v2, p0}, Lmiui/widget/MessageView$1;-><init>(Lmiui/widget/MessageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0, v0, v1}, Lmiui/widget/MessageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lmiui/widget/MessageView;->setGravity(I)V

    .line 91
    return-void
.end method


# virtual methods
.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/widget/MessageView;->uz:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
