.class Lcom/android/vendorsettings/cz;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# instance fields
.field final synthetic lR:Lcom/android/vendorsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/vendorsettings/cz;->lR:Lcom/android/vendorsettings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/vendorsettings/cz;->lR:Lcom/android/vendorsettings/DisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/DisplaySettings;->b(Lcom/android/vendorsettings/DisplaySettings;)V

    .line 676
    return-void
.end method
