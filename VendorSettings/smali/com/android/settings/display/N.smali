.class Lcom/android/vendorsettings/display/N;
.super Ljava/lang/Object;
.source "ScreenTimeoutDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ZU:Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/vendorsettings/display/N;->ZU:Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vendorsettings/display/N;->ZU:Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;->finish()V

    .line 95
    return-void
.end method
