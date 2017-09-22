.class Lmiui/widget/NumberPicker$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field private VO:I

.field private VP:I

.field final synthetic Vu:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 2003
    iput-object p1, p0, Lmiui/widget/NumberPicker$g;->Vu:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/widget/NumberPicker$g;I)I
    .locals 0

    .prologue
    .line 2003
    iput p1, p0, Lmiui/widget/NumberPicker$g;->VO:I

    return p1
.end method

.method static synthetic b(Lmiui/widget/NumberPicker$g;I)I
    .locals 0

    .prologue
    .line 2003
    iput p1, p0, Lmiui/widget/NumberPicker$g;->VP:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2009
    iget-object v0, p0, Lmiui/widget/NumberPicker$g;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lmiui/widget/NumberPicker$g;->VO:I

    iget v2, p0, Lmiui/widget/NumberPicker$g;->VP:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2010
    return-void
.end method
