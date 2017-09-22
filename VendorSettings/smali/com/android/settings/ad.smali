.class Lcom/android/vendorsettings/ad;
.super Landroid/database/ContentObserver;
.source "BaseEnabler.java"


# instance fields
.field final synthetic cq:Lcom/android/vendorsettings/ac;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ac;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/vendorsettings/ad;->cq:Lcom/android/vendorsettings/ac;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/vendorsettings/ad;->cq:Lcom/android/vendorsettings/ac;

    iget-object v0, v0, Lcom/android/vendorsettings/ac;->co:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 21
    iget-object v0, p0, Lcom/android/vendorsettings/ad;->cq:Lcom/android/vendorsettings/ac;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ac;->update()V

    .line 22
    iget-object v0, p0, Lcom/android/vendorsettings/ad;->cq:Lcom/android/vendorsettings/ac;

    iget-object v0, v0, Lcom/android/vendorsettings/ac;->co:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/vendorsettings/ad;->cq:Lcom/android/vendorsettings/ac;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 23
    return-void
.end method
