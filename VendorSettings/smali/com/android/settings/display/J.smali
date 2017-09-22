.class Lcom/android/settings/display/J;
.super Ljava/lang/Object;
.source "ScreenEffect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ZM:Lcom/android/settings/display/ScreenEffect;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenEffect;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/display/J;->ZM:Lcom/android/settings/display/ScreenEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/display/J;->ZM:Lcom/android/settings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenEffect;->finish()V

    .line 130
    return-void
.end method
