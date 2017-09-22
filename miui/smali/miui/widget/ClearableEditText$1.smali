.class Lmiui/widget/ClearableEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OJ:Lmiui/widget/ClearableEditText;


# direct methods
.method constructor <init>(Lmiui/widget/ClearableEditText;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lmiui/widget/ClearableEditText$1;->OJ:Lmiui/widget/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lmiui/widget/ClearableEditText$1;->OJ:Lmiui/widget/ClearableEditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lmiui/widget/ClearableEditText;->a(Lmiui/widget/ClearableEditText;Z)Z

    .line 63
    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->OJ:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText;->refreshDrawableState()V

    .line 64
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
