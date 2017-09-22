.class Lcom/android/vendorsettings/gO;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic xZ:Lcom/android/vendorsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Lcom/android/vendorsettings/gO;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/vendorsettings/gO;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->v(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/gO;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v1}, Lcom/android/vendorsettings/RadioInfo;->u(Lcom/android/vendorsettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v0, p0, Lcom/android/vendorsettings/gO;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->x(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/gO;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v1}, Lcom/android/vendorsettings/RadioInfo;->w(Lcom/android/vendorsettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v0, p0, Lcom/android/vendorsettings/gO;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->z(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/gO;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v1}, Lcom/android/vendorsettings/RadioInfo;->y(Lcom/android/vendorsettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    return-void
.end method
